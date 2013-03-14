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

@TestFor(CommercialFacilityController)
@Mock(CommercialFacility)
class CommercialFacilityControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/commercialFacility/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.commercialFacilityInstanceList.size() == 0
        assert model.commercialFacilityInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.commercialFacilityInstance != null
    }

    void testSave() {
        controller.save()

        assert model.commercialFacilityInstance != null
        assert view == '/commercialFacility/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/commercialFacility/show/1'
        assert controller.flash.message != null
        assert CommercialFacility.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/commercialFacility/list'

        populateValidParams(params)
        def commercialFacility = new CommercialFacility(params)

        assert commercialFacility.save() != null

        params.id = commercialFacility.id

        def model = controller.show()

        assert model.commercialFacilityInstance == commercialFacility
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/commercialFacility/list'

        populateValidParams(params)
        def commercialFacility = new CommercialFacility(params)

        assert commercialFacility.save() != null

        params.id = commercialFacility.id

        def model = controller.edit()

        assert model.commercialFacilityInstance == commercialFacility
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/commercialFacility/list'

        response.reset()

        populateValidParams(params)
        def commercialFacility = new CommercialFacility(params)

        assert commercialFacility.save() != null

        // test invalid parameters in update
        params.id = commercialFacility.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/commercialFacility/edit"
        assert model.commercialFacilityInstance != null

        commercialFacility.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/commercialFacility/show/$commercialFacility.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        commercialFacility.clearErrors()

        populateValidParams(params)
        params.id = commercialFacility.id
        params.version = -1
        controller.update()

        assert view == "/commercialFacility/edit"
        assert model.commercialFacilityInstance != null
        assert model.commercialFacilityInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/commercialFacility/list'

        response.reset()

        populateValidParams(params)
        def commercialFacility = new CommercialFacility(params)

        assert commercialFacility.save() != null
        assert CommercialFacility.count() == 1

        params.id = commercialFacility.id

        controller.delete()

        assert CommercialFacility.count() == 0
        assert CommercialFacility.get(commercialFacility.id) == null
        assert response.redirectedUrl == '/commercialFacility/list'
    }
}
