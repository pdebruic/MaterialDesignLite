rendering
renderContentOn: html
	html
		mdlGrid: [ 
			html mdlCard
				shadow: 2;
				style: 'width: 100%; overflow: initial;';
				class: self tableStyle if: self tableStyle isNotNil;
				id: (id := html nextId);
				with: [ self renderTableContentOn: html ] ]