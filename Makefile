platina-linux-kernel:

bindeb-pkg:
	rm -f *.deb
	goes-build -x -z -v debian/control
	mv *.deb ..
	debuild -i -us -uc -I -Iworktrees --lintian-opts --profile debian

.PHONY: platina-linux-kernel bindeb-pkg

