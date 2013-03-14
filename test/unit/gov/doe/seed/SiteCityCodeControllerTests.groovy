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

@TestFor(SiteCityCodeController)
@Mock(SiteCityCode)
class SiteCityCodeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/siteCityCode/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.siteCityCodeInstanceList.size() == 0
        assert model.siteCityCodeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.siteCityCodeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.siteCityCodeInstance != null
        assert view == '/siteCityCode/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/siteCityCode/show/1'
        assert controller.flash.message != null
        assert SiteCityCode.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/siteCityCode/list'

        populateValidParams(params)
        def siteCityCode = new SiteCityCode(params)

        assert siteCityCode.save() != null

        params.id = siteCityCode.id

        def model = controller.show()

        assert model.siteCityCodeInstance == siteCityCode
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/siteCityCode/list'

        populateValidParams(params)
        def siteCityCode = new SiteCityCode(params)

        assert siteCityCode.save() != null

        params.id = siteCityCode.id

        def model = controller.edit()

        assert model.siteCityCodeInstance == siteCityCode
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/siteCityCode/list'

        response.reset()

        populateValidParams(params)
        def siteCityCode = new SiteCityCode(params)

        assert siteCityCode.save() != null

        // test invalid parameters in update
        params.id = siteCityCode.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/siteCityCode/edit"
        assert model.siteCityCodeInstance != null

        siteCityCode.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/siteCityCode/show/$siteCityCode.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        siteCityCode.clearErrors()

        populateValidParams(params)
        params.id = siteCityCode.id
        params.version = -1
        controller.update()

        assert view == "/siteCityCode/edit"
        assert model.siteCityCodeInstance != null
        assert model.siteCityCodeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/siteCityCode/list'

        response.reset()

        populateValidParams(params)
        def siteCityCode = new SiteCityCode(params)

        assert siteCityCode.save() != null
        assert SiteCityCode.count() == 1

        params.id = siteCityCode.id

        controller.delete()

        assert SiteCityCode.count() == 0
        assert SiteCityCode.get(siteCityCode.id) == null
        assert response.redirectedUrl == '/siteCityCode/list'
    }
}
