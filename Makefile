GOES_BUILD := /usr/lib/goes-build-2.1/goes-build

platina-linux-kernel:

bindeb-pkg:
	rm -f *.deb
	$(GOES_BUILD) -x -z -v debian/control
	mv *.deb ..
	debuild -i -us -uc -I -Iworktrees --lintian-opts --profile debian

.PHONY: platina-linux-kernel bindeb-pkg

