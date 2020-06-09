bindeb-pkg:
	rm -f *.deb
	goes-build -x -z -v platina-mk1.deb example-amd64.deb
	mv *.deb ..

.PHONY: bindeb-pkg

