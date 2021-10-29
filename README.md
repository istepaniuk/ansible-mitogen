# ansible-mitogen

Ansible runner +mitogen

This is a very basic Docker image, based on the official `ansible/ansible-runner` runner.

It only adds [Mitogen](https://mitogen.networkgenomics.com/ansible_detailed.html) in /opt/mitogen-0.2.9, 
so you can use:

```
[defaults]
strategy_plugins = /opt/mitogen/ansible_mitogen/plugins/strategy
strategy = mitogen_linear
```

In your ansible.cfg.


The behavior of a runner configured this way is almost identical to the default `linear` strategy, 
but using Mitogen's alternative implementation and IO Multiplexing, which for long playbooks can
archive a 7x speed increase.
