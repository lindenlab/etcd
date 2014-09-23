
all: bin/etcd

bin/etcd:
	./build

install: bin/etcd
	mkdir -p $(DESTDIR)
	/bin/cp -vpf -t $(DESTDIR) bin/etcd
	/bin/cp -vpf bin/bench $(DESTDIR)/etcd-bench

clean:
	rm -rf bin gopath
