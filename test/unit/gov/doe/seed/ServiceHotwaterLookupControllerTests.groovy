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
package gov.doe.seed



import org.junit.*
import grails.test.mixin.*

@TestFor(ServiceHotwaterLookupController)
@Mock(ServiceHotwaterLookup)
class ServiceHotwaterLookupControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/serviceHotwaterLookup/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.serviceHotwaterLookupInstanceList.size() == 0
        assert model.serviceHotwaterLookupInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.serviceHotwaterLookupInstance != null
    }

    void testSave() {
        controller.save()

        assert model.serviceHotwaterLookupInstance != null
        assert view == '/serviceHotwaterLookup/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/serviceHotwaterLookup/show/1'
        assert controller.flash.message != null
        assert ServiceHotwaterLookup.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/serviceHotwaterLookup/list'

        populateValidParams(params)
        def serviceHotwaterLookup = new ServiceHotwaterLookup(params)

        assert serviceHotwaterLookup.save() != null

        params.id = serviceHotwaterLookup.id

        def model = controller.show()

        assert model.serviceHotwaterLookupInstance == serviceHotwaterLookup
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/serviceHotwaterLookup/list'

        populateValidParams(params)
        def serviceHotwaterLookup = new ServiceHotwaterLookup(params)

        assert serviceHotwaterLookup.save() != null

        params.id = serviceHotwaterLookup.id

        def model = controller.edit()

        assert model.serviceHotwaterLookupInstance == serviceHotwaterLookup
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/serviceHotwaterLookup/list'

        response.reset()

        populateValidParams(params)
        def serviceHotwaterLookup = new ServiceHotwaterLookup(params)

        assert serviceHotwaterLookup.save() != null

        // test invalid parameters in update
        params.id = serviceHotwaterLookup.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/serviceHotwaterLookup/edit"
        assert model.serviceHotwaterLookupInstance != null

        serviceHotwaterLookup.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/serviceHotwaterLookup/show/$serviceHotwaterLookup.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        serviceHotwaterLookup.clearErrors()

        populateValidParams(params)
        params.id = serviceHotwaterLookup.id
        params.version = -1
        controller.update()

        assert view == "/serviceHotwaterLookup/edit"
        assert model.serviceHotwaterLookupInstance != null
        assert model.serviceHotwaterLookupInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/serviceHotwaterLookup/list'

        response.reset()

        populateValidParams(params)
        def serviceHotwaterLookup = new ServiceHotwaterLookup(params)

        assert serviceHotwaterLookup.save() != null
        assert ServiceHotwaterLookup.count() == 1

        params.id = serviceHotwaterLookup.id

        controller.delete()

        assert ServiceHotwaterLookup.count() == 0
        assert ServiceHotwaterLookup.get(serviceHotwaterLookup.id) == null
        assert response.redirectedUrl == '/serviceHotwaterLookup/list'
    }
}
