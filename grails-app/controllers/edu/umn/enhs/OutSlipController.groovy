package edu.umn.enhs

import org.springframework.dao.DataIntegrityViolationException

class OutSlipController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [outSlipInstanceList: OutSlip.list(params), outSlipInstanceTotal: OutSlip.count()]
    }

    def create() {
        [outSlipInstance: new OutSlip(params)]
    }

    def save() {
        def outSlipInstance = new OutSlip(params)
        if (!outSlipInstance.save(flush: true)) {
            render(view: "create", model: [outSlipInstance: outSlipInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'outSlip.label', default: 'OutSlip'), outSlipInstance.id])
        redirect(action: "show", id: outSlipInstance.id)
    }

    def show() {
        def outSlipInstance = OutSlip.get(params.id)
        if (!outSlipInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'outSlip.label', default: 'OutSlip'), params.id])
            redirect(action: "list")
            return
        }

        [outSlipInstance: outSlipInstance]
    }

    def edit() {
        def outSlipInstance = OutSlip.get(params.id)
        if (!outSlipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'outSlip.label', default: 'OutSlip'), params.id])
            redirect(action: "list")
            return
        }

        [outSlipInstance: outSlipInstance]
    }

    def update() {
        def outSlipInstance = OutSlip.get(params.id)
        if (!outSlipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'outSlip.label', default: 'OutSlip'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (outSlipInstance.version > version) {
                outSlipInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'outSlip.label', default: 'OutSlip')] as Object[],
                          "Another user has updated this OutSlip while you were editing")
                render(view: "edit", model: [outSlipInstance: outSlipInstance])
                return
            }
        }

        outSlipInstance.properties = params

        if (!outSlipInstance.save(flush: true)) {
            render(view: "edit", model: [outSlipInstance: outSlipInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'outSlip.label', default: 'OutSlip'), outSlipInstance.id])
        redirect(action: "show", id: outSlipInstance.id)
    }

    def delete() {
        def outSlipInstance = OutSlip.get(params.id)
        if (!outSlipInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'outSlip.label', default: 'OutSlip'), params.id])
            redirect(action: "list")
            return
        }

        try {
            outSlipInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'outSlip.label', default: 'OutSlip'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'outSlip.label', default: 'OutSlip'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
