两种`checkout`方式，因为管理配置不统一，最好只维护一个
可通过`services configurations`控制（Dockerfile里，通过关闭`svnserve`或者`apache`）

- `http://ip/svn/repo`
    可以在iF.SVNAdmin中设置仓库及其权限管理

    初始步骤:
    iF.SVNAdmin setting
    - http://localhost/svnadmin
    - svn auth:   /etc/subversion/subversion-access-control
    - user auth:  /etc/subversion/passwd

- `svn://ip/repo`
    命令行中`svnadmin`创建仓库，需要在具体仓库配置权限管理，通常涉及到的配置在doc

