platina-linux-kernel:

bindeb-pkg:
	rm -f *.deb
	goes-build -branch remotes/origin/goes-2.0 -x -z -v debian/control
	mv *.deb ..
	debuild -i -us -uc -I -Iworktrees --lintian-opts --profile debian

.PHONY: platina-linux-kernel bindeb-pkg

