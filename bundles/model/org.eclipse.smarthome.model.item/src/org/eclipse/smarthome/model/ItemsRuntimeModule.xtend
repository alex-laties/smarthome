/** 
 * Copyright (c) 2014-2017 by the respective copyright holders.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */
package
/*
 * generated by Xtext
 */
org.eclipse.smarthome.model

import com.google.inject.Binder
import com.google.inject.name.Names
import org.eclipse.smarthome.model.internal.valueconverter.ItemValueConverters
import org.eclipse.xtext.conversion.IValueConverterService
import org.eclipse.xtext.linking.lazy.LazyURIEncoder

/** 
 * Use this class to register components to be used at runtime / without the Equinox extension registry.
 */
class ItemsRuntimeModule extends AbstractItemsRuntimeModule {
    
    override Class<? extends IValueConverterService> bindIValueConverterService() {
        return ItemValueConverters
    }
    
    override void configureUseIndexFragmentsForLazyLinking(Binder binder) {
        binder.bind(Boolean.TYPE).annotatedWith(Names.named(LazyURIEncoder.USE_INDEXED_FRAGMENTS_BINDING)).toInstance(
            Boolean.FALSE)
    }
}
