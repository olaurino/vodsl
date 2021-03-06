/*
 * generated by Xtext
 */
package net.ivoa.vodml.formatting

import org.eclipse.xtext.formatting.impl.AbstractDeclarativeFormatter
import org.eclipse.xtext.formatting.impl.FormattingConfig
import com.google.inject.Inject
import net.ivoa.vodml.services.VodslGrammarAccess

// import com.google.inject.Inject;
// import net.ivoa.vodml.services.VodslGrammarAccess

/**
 * This class contains custom formatting description.
 * 
 * see : http://www.eclipse.org/Xtext/documentation.html#formatting
 * on how and when to use it 
 * 
 * Also see {@link org.eclipse.xtext.xtext.XtextFormattingTokenSerializer} as an example
 */
class VodslFormatter extends AbstractDeclarativeFormatter {

	@Inject extension VodslGrammarAccess
	
	override protected void configureFormatting(FormattingConfig c) {

		c.setAutoLinewrap(120);
		
	   /*t */
	   for (tok : findKeywords("{","}"))
		{
			c.setLinewrap().around(tok);
		}
	
		
		c.setLinewrap(1, 2, 3).before(getPackageDeclarationRule);
		c.setLinewrap(2, 2, 4).before(getDataTypeRule);
		c.setLinewrap(2, 2, 4).before(getObjectTypeRule);
		c.setLinewrap(1,2,2).around(getAttributeRule);
		c.setLinewrap(1,2,2).around(getPrimitiveTypeRule);
	   c.setLinewrap(1,2,2).around(getIncludeDeclarationRule);
	   c.setLinewrap(1,1,2).before(getEnumLiteralRule);
		
	   c.setIndentationIncrement().after(getModelDeclarationRule);
	   for (tok : findKeywords("\"")) // stop line break before long descriptions
		{
			c.setNoLinewrap().before(tok);
		}
		
		
      val pairs = findKeywordPairs("{", "}");
      for (pair : pairs) {
			c.setIndentation(pair.getFirst(), pair.getSecond());
		}
		
		for (tok : findKeywords("@"))
		{
			c.setNoSpace().after(tok);
		}
		
		c.setLinewrap(0, 1, 2).before(getSL_COMMENTRule);
		c.setLinewrap(0, 1, 2).before(getML_COMMENTRule);
		c.setLinewrap(0, 1, 1).after(getML_COMMENTRule);
}

}
