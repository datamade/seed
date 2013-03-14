/**
 * Copyright (c) 2013, U.S. Department of Energy
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without 
 * modification, are permitted provided that the following conditions are met:
 * 
 * - Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 * - Redistributions in binary form must reproduce the above copyright notice, 
 *   this list of conditions and the following disclaimer in the documentation 
 *   and/or other materials provided with the distribution.
 * - Neither the name of the U.S. Department of Energy nor the names of its 
 *   contributors may be used to endorse or promote products derived from this 
 *   software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE 
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
 * POSSIBILITY OF SUCH DAMAGE.
 */
package org.codehaus.groovy.grails.plugins.orm.auditable



import org.junit.*
import grails.test.mixin.*

@TestFor(AuditLogEventController)
@Mock(AuditLogEvent)
class AuditLogEventControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/auditLogEvent/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.auditLogEventInstanceList.size() == 0
        assert model.auditLogEventInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.auditLogEventInstance != null
    }

    void testSave() {
        controller.save()

        assert model.auditLogEventInstance != null
        assert view == '/auditLogEvent/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/auditLogEvent/show/1'
        assert controller.flash.message != null
        assert AuditLogEvent.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/auditLogEvent/list'

        populateValidParams(params)
        def auditLogEvent = new AuditLogEvent(params)

        assert auditLogEvent.save() != null

        params.id = auditLogEvent.id

        def model = controller.show()

        assert model.auditLogEventInstance == auditLogEvent
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/auditLogEvent/list'

        populateValidParams(params)
        def auditLogEvent = new AuditLogEvent(params)

        assert auditLogEvent.save() != null

        params.id = auditLogEvent.id

        def model = controller.edit()

        assert model.auditLogEventInstance == auditLogEvent
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/auditLogEvent/list'

        response.reset()

        populateValidParams(params)
        def auditLogEvent = new AuditLogEvent(params)

        assert auditLogEvent.save() != null

        // test invalid parameters in update
        params.id = auditLogEvent.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/auditLogEvent/edit"
        assert model.auditLogEventInstance != null

        auditLogEvent.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/auditLogEvent/show/$auditLogEvent.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        auditLogEvent.clearErrors()

        populateValidParams(params)
        params.id = auditLogEvent.id
        params.version = -1
        controller.update()

        assert view == "/auditLogEvent/edit"
        assert model.auditLogEventInstance != null
        assert model.auditLogEventInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/auditLogEvent/list'

        response.reset()

        populateValidParams(params)
        def auditLogEvent = new AuditLogEvent(params)

        assert auditLogEvent.save() != null
        assert AuditLogEvent.count() == 1

        params.id = auditLogEvent.id

        controller.delete()

        assert AuditLogEvent.count() == 0
        assert AuditLogEvent.get(auditLogEvent.id) == null
        assert response.redirectedUrl == '/auditLogEvent/list'
    }
}
