package edu.umn.enhs



import org.junit.*
import grails.test.mixin.*

@TestFor(OutSlipController)
@Mock(OutSlip)
class OutSlipControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/outSlip/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.outSlipInstanceList.size() == 0
        assert model.outSlipInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.outSlipInstance != null
    }

    void testSave() {
        controller.save()

        assert model.outSlipInstance != null
        assert view == '/outSlip/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/outSlip/show/1'
        assert controller.flash.message != null
        assert OutSlip.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/outSlip/list'


        populateValidParams(params)
        def outSlip = new OutSlip(params)

        assert outSlip.save() != null

        params.id = outSlip.id

        def model = controller.show()

        assert model.outSlipInstance == outSlip
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/outSlip/list'


        populateValidParams(params)
        def outSlip = new OutSlip(params)

        assert outSlip.save() != null

        params.id = outSlip.id

        def model = controller.edit()

        assert model.outSlipInstance == outSlip
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/outSlip/list'

        response.reset()


        populateValidParams(params)
        def outSlip = new OutSlip(params)

        assert outSlip.save() != null

        // test invalid parameters in update
        params.id = outSlip.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/outSlip/edit"
        assert model.outSlipInstance != null

        outSlip.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/outSlip/show/$outSlip.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        outSlip.clearErrors()

        populateValidParams(params)
        params.id = outSlip.id
        params.version = -1
        controller.update()

        assert view == "/outSlip/edit"
        assert model.outSlipInstance != null
        assert model.outSlipInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/outSlip/list'

        response.reset()

        populateValidParams(params)
        def outSlip = new OutSlip(params)

        assert outSlip.save() != null
        assert OutSlip.count() == 1

        params.id = outSlip.id

        controller.delete()

        assert OutSlip.count() == 0
        assert OutSlip.get(outSlip.id) == null
        assert response.redirectedUrl == '/outSlip/list'
    }
}
