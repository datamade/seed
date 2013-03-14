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

@TestFor(SystemProcessLoadController)
@Mock(SystemProcessLoad)
class SystemProcessLoadControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/systemProcessLoad/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.systemProcessLoadInstanceList.size() == 0
        assert model.systemProcessLoadInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.systemProcessLoadInstance != null
    }

    void testSave() {
        controller.save()

        assert model.systemProcessLoadInstance != null
        assert view == '/systemProcessLoad/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/systemProcessLoad/show/1'
        assert controller.flash.message != null
        assert SystemProcessLoad.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/systemProcessLoad/list'

        populateValidParams(params)
        def systemProcessLoad = new SystemProcessLoad(params)

        assert systemProcessLoad.save() != null

        params.id = systemProcessLoad.id

        def model = controller.show()

        assert model.systemProcessLoadInstance == systemProcessLoad
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/systemProcessLoad/list'

        populateValidParams(params)
        def systemProcessLoad = new SystemProcessLoad(params)

        assert systemProcessLoad.save() != null

        params.id = systemProcessLoad.id

        def model = controller.edit()

        assert model.systemProcessLoadInstance == systemProcessLoad
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/systemProcessLoad/list'

        response.reset()

        populateValidParams(params)
        def systemProcessLoad = new SystemProcessLoad(params)

        assert systemProcessLoad.save() != null

        // test invalid parameters in update
        params.id = systemProcessLoad.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/systemProcessLoad/edit"
        assert model.systemProcessLoadInstance != null

        systemProcessLoad.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/systemProcessLoad/show/$systemProcessLoad.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        systemProcessLoad.clearErrors()

        populateValidParams(params)
        params.id = systemProcessLoad.id
        params.version = -1
        controller.update()

        assert view == "/systemProcessLoad/edit"
        assert model.systemProcessLoadInstance != null
        assert model.systemProcessLoadInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/systemProcessLoad/list'

        response.reset()

        populateValidParams(params)
        def systemProcessLoad = new SystemProcessLoad(params)

        assert systemProcessLoad.save() != null
        assert SystemProcessLoad.count() == 1

        params.id = systemProcessLoad.id

        controller.delete()

        assert SystemProcessLoad.count() == 0
        assert SystemProcessLoad.get(systemProcessLoad.id) == null
        assert response.redirectedUrl == '/systemProcessLoad/list'
    }
}
