from fabric.api import run, sudo, env
from re import findall

def get_current_kernel_name():
    val = run('uname -r')
    print val
    return val


def list_kernels():
    val = run('dpkg -l | grep linux-image-')
    return val


def strip_kernels(val):
   return findall(r'\s(linux-image-[\w\d\.-]*-generic)\s', val)


def purge_old_kernels():
    val = list_kernels()

    current_kernel = get_current_kernel_name()
    kernels_to_purge = [k for k in strip_kernels(val)
                        if current_kernel not in k]
    sudo('apt-get purge {}'.format(' '.join(kernels_to_purge)))

    val = list_kernels()
    print([k for k in strip_kernels(val)])