Description
--------------------

I am a brush to create a right section inside a mega footer.

Example
--------------------

	| sections |
	sections := OrderedDictionary
		with: 'Features'	-> #('About' 'Terms' 'Partners' 'Updates')
		with: 'Details' 	-> #('Specs' 'Tools' 'Ressources')
		with: 'Technology'	-> #('How it works' 'Patterns' 'Usage' 'Products' 'Contracts')
		with: 'FAQ' 		-> #('Questions' 'Answers' 'Contact us').
	html
		mdlFooter: [ html
				mdlFooterMiddleSection: [ sections
						keysAndValuesDo: [ :title :members | 
							html
								mdlFooterDropdownSection: [ html mdlFooterHeadingCheckbox.
									html mdlFooterHeading: title.
									html mdlFooterLinkList: [ members do: [ :label | html listItem: [ html anchor: label ] ] ] ] ] ].
			html
				mdlFooterBottomSection: [ html mdlLogo: 'Title'.
					html
						mdlFooterLinkList: [ html listItem: [ html anchor: 'Help' ].
							html listItem: [ html anchor: 'Privacy & Terms' ] ] ] ]