/*
 * generated by Xtext - then hand edited.
 */
package net.ivoa.vodml.ui;

import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.xtext.documentation.IEObjectDocumentationProvider;

/**
 * Use this class to register components to be used within the IDE.
 */
public class VodslUiModule extends net.ivoa.vodml.ui.AbstractVodslUiModule {
	public VodslUiModule(AbstractUIPlugin plugin) {
		super(plugin);
	}
	
	public Class<? extends IEObjectDocumentationProvider> bindIEObjectDocumentationProvider()
	{
	    return VodslEobjectDocumentationProvider.class;
	}
}
