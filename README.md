# 프로젝트 소개

편리한 음식 성분을 알아내기위해 사진을 찍고 이를 통해 음식을 구별해내고, 그 음식에 대한 성분표를 출력하는 앱 입니다.



# 프로젝트의 결과, 작동방식

1. 모바일 앱을 이용해 음식 이미지를 찍습니다
2. 받은 이미지를 백엔드서버에 업로드합니다
3. 백엔드 서버에서 음식이미지를 통해 음식을 알아내고, json 형식으로 결과를 리턴합니다
4. 클라이언트에서 받은 json 결과를 통해서, 음식을 고릅니다
5. 고른 음식의 성분표를 DB를 통해 불러와 출력합니다. 






# 프로젝트 파일 소개

```
├── FASTAPI_SERVER
│   └── vision_fastapi-master
│       ├── __pycache__
│       │   └── main.cpython-310.pyc
│       ├── auth-key
│       │   └── auth-key.json
│       ├── bak
│       │   └── dumy.py
│       ├── file
│       ├── main.py
│       ├── me
│       │   ├── bin
│       │   │   ├── Activate.ps1
│       │   │   ├── activate
│       │   │   ├── activate.csh
│       │   │   ├── activate.fish
│       │   │   ├── pip
│       │   │   ├── pip3
│       │   │   ├── pip3.10
│       │   │   ├── python -> python3
│       │   │   ├── python3 -> /usr/bin/python3
│       │   │   └── python3.10 -> python3
│       │   ├── include
│       │   ├── lib
│       │   │   └── python3.10
│       │   │       └── site-packages
│       │   │           ├── _distutils_hack
│       │   │           │   ├── __init__.py
│       │   │           │   ├── __pycache__
│       │   │           │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   └── override.cpython-310.pyc
│       │   │           │   └── override.py
│       │   │           ├── distutils-precedence.pth
│       │   │           ├── pip
│       │   │           │   ├── __init__.py
│       │   │           │   ├── __main__.py
│       │   │           │   ├── __pycache__
│       │   │           │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   └── __main__.cpython-310.pyc
│       │   │           │   ├── _internal
│       │   │           │   │   ├── __init__.py
│       │   │           │   │   ├── __pycache__
│       │   │           │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   ├── build_env.cpython-310.pyc
│       │   │           │   │   │   ├── cache.cpython-310.pyc
│       │   │           │   │   │   ├── configuration.cpython-310.pyc
│       │   │           │   │   │   ├── exceptions.cpython-310.pyc
│       │   │           │   │   │   ├── main.cpython-310.pyc
│       │   │           │   │   │   ├── pyproject.cpython-310.pyc
│       │   │           │   │   │   ├── self_outdated_check.cpython-310.pyc
│       │   │           │   │   │   └── wheel_builder.cpython-310.pyc
│       │   │           │   │   ├── build_env.py
│       │   │           │   │   ├── cache.py
│       │   │           │   │   ├── cli
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── autocompletion.cpython-310.pyc
│       │   │           │   │   │   │   ├── base_command.cpython-310.pyc
│       │   │           │   │   │   │   ├── cmdoptions.cpython-310.pyc
│       │   │           │   │   │   │   ├── command_context.cpython-310.pyc
│       │   │           │   │   │   │   ├── main.cpython-310.pyc
│       │   │           │   │   │   │   ├── main_parser.cpython-310.pyc
│       │   │           │   │   │   │   ├── parser.cpython-310.pyc
│       │   │           │   │   │   │   ├── progress_bars.cpython-310.pyc
│       │   │           │   │   │   │   ├── req_command.cpython-310.pyc
│       │   │           │   │   │   │   ├── spinners.cpython-310.pyc
│       │   │           │   │   │   │   └── status_codes.cpython-310.pyc
│       │   │           │   │   │   ├── autocompletion.py
│       │   │           │   │   │   ├── base_command.py
│       │   │           │   │   │   ├── cmdoptions.py
│       │   │           │   │   │   ├── command_context.py
│       │   │           │   │   │   ├── main.py
│       │   │           │   │   │   ├── main_parser.py
│       │   │           │   │   │   ├── parser.py
│       │   │           │   │   │   ├── progress_bars.py
│       │   │           │   │   │   ├── req_command.py
│       │   │           │   │   │   ├── spinners.py
│       │   │           │   │   │   └── status_codes.py
│       │   │           │   │   ├── commands
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── cache.cpython-310.pyc
│       │   │           │   │   │   │   ├── check.cpython-310.pyc
│       │   │           │   │   │   │   ├── completion.cpython-310.pyc
│       │   │           │   │   │   │   ├── configuration.cpython-310.pyc
│       │   │           │   │   │   │   ├── debug.cpython-310.pyc
│       │   │           │   │   │   │   ├── download.cpython-310.pyc
│       │   │           │   │   │   │   ├── freeze.cpython-310.pyc
│       │   │           │   │   │   │   ├── hash.cpython-310.pyc
│       │   │           │   │   │   │   ├── help.cpython-310.pyc
│       │   │           │   │   │   │   ├── index.cpython-310.pyc
│       │   │           │   │   │   │   ├── install.cpython-310.pyc
│       │   │           │   │   │   │   ├── list.cpython-310.pyc
│       │   │           │   │   │   │   ├── search.cpython-310.pyc
│       │   │           │   │   │   │   ├── show.cpython-310.pyc
│       │   │           │   │   │   │   ├── uninstall.cpython-310.pyc
│       │   │           │   │   │   │   └── wheel.cpython-310.pyc
│       │   │           │   │   │   ├── cache.py
│       │   │           │   │   │   ├── check.py
│       │   │           │   │   │   ├── completion.py
│       │   │           │   │   │   ├── configuration.py
│       │   │           │   │   │   ├── debug.py
│       │   │           │   │   │   ├── download.py
│       │   │           │   │   │   ├── freeze.py
│       │   │           │   │   │   ├── hash.py
│       │   │           │   │   │   ├── help.py
│       │   │           │   │   │   ├── index.py
│       │   │           │   │   │   ├── install.py
│       │   │           │   │   │   ├── list.py
│       │   │           │   │   │   ├── search.py
│       │   │           │   │   │   ├── show.py
│       │   │           │   │   │   ├── uninstall.py
│       │   │           │   │   │   └── wheel.py
│       │   │           │   │   ├── configuration.py
│       │   │           │   │   ├── distributions
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── base.cpython-310.pyc
│       │   │           │   │   │   │   ├── installed.cpython-310.pyc
│       │   │           │   │   │   │   ├── sdist.cpython-310.pyc
│       │   │           │   │   │   │   └── wheel.cpython-310.pyc
│       │   │           │   │   │   ├── base.py
│       │   │           │   │   │   ├── installed.py
│       │   │           │   │   │   ├── sdist.py
│       │   │           │   │   │   └── wheel.py
│       │   │           │   │   ├── exceptions.py
│       │   │           │   │   ├── index
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── collector.cpython-310.pyc
│       │   │           │   │   │   │   ├── package_finder.cpython-310.pyc
│       │   │           │   │   │   │   └── sources.cpython-310.pyc
│       │   │           │   │   │   ├── collector.py
│       │   │           │   │   │   ├── package_finder.py
│       │   │           │   │   │   └── sources.py
│       │   │           │   │   ├── locations
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── _distutils.cpython-310.pyc
│       │   │           │   │   │   │   ├── _sysconfig.cpython-310.pyc
│       │   │           │   │   │   │   └── base.cpython-310.pyc
│       │   │           │   │   │   ├── _distutils.py
│       │   │           │   │   │   ├── _sysconfig.py
│       │   │           │   │   │   └── base.py
│       │   │           │   │   ├── main.py
│       │   │           │   │   ├── metadata
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── base.cpython-310.pyc
│       │   │           │   │   │   │   └── pkg_resources.cpython-310.pyc
│       │   │           │   │   │   ├── base.py
│       │   │           │   │   │   └── pkg_resources.py
│       │   │           │   │   ├── models
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── candidate.cpython-310.pyc
│       │   │           │   │   │   │   ├── direct_url.cpython-310.pyc
│       │   │           │   │   │   │   ├── format_control.cpython-310.pyc
│       │   │           │   │   │   │   ├── index.cpython-310.pyc
│       │   │           │   │   │   │   ├── link.cpython-310.pyc
│       │   │           │   │   │   │   ├── scheme.cpython-310.pyc
│       │   │           │   │   │   │   ├── search_scope.cpython-310.pyc
│       │   │           │   │   │   │   ├── selection_prefs.cpython-310.pyc
│       │   │           │   │   │   │   ├── target_python.cpython-310.pyc
│       │   │           │   │   │   │   └── wheel.cpython-310.pyc
│       │   │           │   │   │   ├── candidate.py
│       │   │           │   │   │   ├── direct_url.py
│       │   │           │   │   │   ├── format_control.py
│       │   │           │   │   │   ├── index.py
│       │   │           │   │   │   ├── link.py
│       │   │           │   │   │   ├── scheme.py
│       │   │           │   │   │   ├── search_scope.py
│       │   │           │   │   │   ├── selection_prefs.py
│       │   │           │   │   │   ├── target_python.py
│       │   │           │   │   │   └── wheel.py
│       │   │           │   │   ├── network
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── auth.cpython-310.pyc
│       │   │           │   │   │   │   ├── cache.cpython-310.pyc
│       │   │           │   │   │   │   ├── download.cpython-310.pyc
│       │   │           │   │   │   │   ├── lazy_wheel.cpython-310.pyc
│       │   │           │   │   │   │   ├── session.cpython-310.pyc
│       │   │           │   │   │   │   ├── utils.cpython-310.pyc
│       │   │           │   │   │   │   └── xmlrpc.cpython-310.pyc
│       │   │           │   │   │   ├── auth.py
│       │   │           │   │   │   ├── cache.py
│       │   │           │   │   │   ├── download.py
│       │   │           │   │   │   ├── lazy_wheel.py
│       │   │           │   │   │   ├── session.py
│       │   │           │   │   │   ├── utils.py
│       │   │           │   │   │   └── xmlrpc.py
│       │   │           │   │   ├── operations
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── check.cpython-310.pyc
│       │   │           │   │   │   │   ├── freeze.cpython-310.pyc
│       │   │           │   │   │   │   └── prepare.cpython-310.pyc
│       │   │           │   │   │   ├── build
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── metadata.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── metadata_editable.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── metadata_legacy.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── wheel.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── wheel_editable.cpython-310.pyc
│       │   │           │   │   │   │   │   └── wheel_legacy.cpython-310.pyc
│       │   │           │   │   │   │   ├── metadata.py
│       │   │           │   │   │   │   ├── metadata_editable.py
│       │   │           │   │   │   │   ├── metadata_legacy.py
│       │   │           │   │   │   │   ├── wheel.py
│       │   │           │   │   │   │   ├── wheel_editable.py
│       │   │           │   │   │   │   └── wheel_legacy.py
│       │   │           │   │   │   ├── check.py
│       │   │           │   │   │   ├── freeze.py
│       │   │           │   │   │   ├── install
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── editable_legacy.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── legacy.cpython-310.pyc
│       │   │           │   │   │   │   │   └── wheel.cpython-310.pyc
│       │   │           │   │   │   │   ├── editable_legacy.py
│       │   │           │   │   │   │   ├── legacy.py
│       │   │           │   │   │   │   └── wheel.py
│       │   │           │   │   │   └── prepare.py
│       │   │           │   │   ├── pyproject.py
│       │   │           │   │   ├── req
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── constructors.cpython-310.pyc
│       │   │           │   │   │   │   ├── req_file.cpython-310.pyc
│       │   │           │   │   │   │   ├── req_install.cpython-310.pyc
│       │   │           │   │   │   │   ├── req_set.cpython-310.pyc
│       │   │           │   │   │   │   ├── req_tracker.cpython-310.pyc
│       │   │           │   │   │   │   └── req_uninstall.cpython-310.pyc
│       │   │           │   │   │   ├── constructors.py
│       │   │           │   │   │   ├── req_file.py
│       │   │           │   │   │   ├── req_install.py
│       │   │           │   │   │   ├── req_set.py
│       │   │           │   │   │   ├── req_tracker.py
│       │   │           │   │   │   └── req_uninstall.py
│       │   │           │   │   ├── resolution
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   └── base.cpython-310.pyc
│       │   │           │   │   │   ├── base.py
│       │   │           │   │   │   ├── legacy
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   └── resolver.cpython-310.pyc
│       │   │           │   │   │   │   └── resolver.py
│       │   │           │   │   │   └── resolvelib
│       │   │           │   │   │       ├── __init__.py
│       │   │           │   │   │       ├── __pycache__
│       │   │           │   │   │       │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │       │   ├── base.cpython-310.pyc
│       │   │           │   │   │       │   ├── candidates.cpython-310.pyc
│       │   │           │   │   │       │   ├── factory.cpython-310.pyc
│       │   │           │   │   │       │   ├── found_candidates.cpython-310.pyc
│       │   │           │   │   │       │   ├── provider.cpython-310.pyc
│       │   │           │   │   │       │   ├── reporter.cpython-310.pyc
│       │   │           │   │   │       │   ├── requirements.cpython-310.pyc
│       │   │           │   │   │       │   └── resolver.cpython-310.pyc
│       │   │           │   │   │       ├── base.py
│       │   │           │   │   │       ├── candidates.py
│       │   │           │   │   │       ├── factory.py
│       │   │           │   │   │       ├── found_candidates.py
│       │   │           │   │   │       ├── provider.py
│       │   │           │   │   │       ├── reporter.py
│       │   │           │   │   │       ├── requirements.py
│       │   │           │   │   │       └── resolver.py
│       │   │           │   │   ├── self_outdated_check.py
│       │   │           │   │   ├── utils
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── _log.cpython-310.pyc
│       │   │           │   │   │   │   ├── appdirs.cpython-310.pyc
│       │   │           │   │   │   │   ├── compat.cpython-310.pyc
│       │   │           │   │   │   │   ├── compatibility_tags.cpython-310.pyc
│       │   │           │   │   │   │   ├── datetime.cpython-310.pyc
│       │   │           │   │   │   │   ├── deprecation.cpython-310.pyc
│       │   │           │   │   │   │   ├── direct_url_helpers.cpython-310.pyc
│       │   │           │   │   │   │   ├── distutils_args.cpython-310.pyc
│       │   │           │   │   │   │   ├── egg_link.cpython-310.pyc
│       │   │           │   │   │   │   ├── encoding.cpython-310.pyc
│       │   │           │   │   │   │   ├── entrypoints.cpython-310.pyc
│       │   │           │   │   │   │   ├── filesystem.cpython-310.pyc
│       │   │           │   │   │   │   ├── filetypes.cpython-310.pyc
│       │   │           │   │   │   │   ├── glibc.cpython-310.pyc
│       │   │           │   │   │   │   ├── hashes.cpython-310.pyc
│       │   │           │   │   │   │   ├── inject_securetransport.cpython-310.pyc
│       │   │           │   │   │   │   ├── logging.cpython-310.pyc
│       │   │           │   │   │   │   ├── misc.cpython-310.pyc
│       │   │           │   │   │   │   ├── models.cpython-310.pyc
│       │   │           │   │   │   │   ├── packaging.cpython-310.pyc
│       │   │           │   │   │   │   ├── setuptools_build.cpython-310.pyc
│       │   │           │   │   │   │   ├── subprocess.cpython-310.pyc
│       │   │           │   │   │   │   ├── temp_dir.cpython-310.pyc
│       │   │           │   │   │   │   ├── unpacking.cpython-310.pyc
│       │   │           │   │   │   │   ├── urls.cpython-310.pyc
│       │   │           │   │   │   │   ├── virtualenv.cpython-310.pyc
│       │   │           │   │   │   │   └── wheel.cpython-310.pyc
│       │   │           │   │   │   ├── _log.py
│       │   │           │   │   │   ├── appdirs.py
│       │   │           │   │   │   ├── compat.py
│       │   │           │   │   │   ├── compatibility_tags.py
│       │   │           │   │   │   ├── datetime.py
│       │   │           │   │   │   ├── deprecation.py
│       │   │           │   │   │   ├── direct_url_helpers.py
│       │   │           │   │   │   ├── distutils_args.py
│       │   │           │   │   │   ├── egg_link.py
│       │   │           │   │   │   ├── encoding.py
│       │   │           │   │   │   ├── entrypoints.py
│       │   │           │   │   │   ├── filesystem.py
│       │   │           │   │   │   ├── filetypes.py
│       │   │           │   │   │   ├── glibc.py
│       │   │           │   │   │   ├── hashes.py
│       │   │           │   │   │   ├── inject_securetransport.py
│       │   │           │   │   │   ├── logging.py
│       │   │           │   │   │   ├── misc.py
│       │   │           │   │   │   ├── models.py
│       │   │           │   │   │   ├── packaging.py
│       │   │           │   │   │   ├── setuptools_build.py
│       │   │           │   │   │   ├── subprocess.py
│       │   │           │   │   │   ├── temp_dir.py
│       │   │           │   │   │   ├── unpacking.py
│       │   │           │   │   │   ├── urls.py
│       │   │           │   │   │   ├── virtualenv.py
│       │   │           │   │   │   └── wheel.py
│       │   │           │   │   ├── vcs
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── bazaar.cpython-310.pyc
│       │   │           │   │   │   │   ├── git.cpython-310.pyc
│       │   │           │   │   │   │   ├── mercurial.cpython-310.pyc
│       │   │           │   │   │   │   ├── subversion.cpython-310.pyc
│       │   │           │   │   │   │   └── versioncontrol.cpython-310.pyc
│       │   │           │   │   │   ├── bazaar.py
│       │   │           │   │   │   ├── git.py
│       │   │           │   │   │   ├── mercurial.py
│       │   │           │   │   │   ├── subversion.py
│       │   │           │   │   │   └── versioncontrol.py
│       │   │           │   │   └── wheel_builder.py
│       │   │           │   ├── _vendor
│       │   │           │   │   ├── __init__.py
│       │   │           │   │   ├── __pycache__
│       │   │           │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   ├── distro.cpython-310.pyc
│       │   │           │   │   │   ├── six.cpython-310.pyc
│       │   │           │   │   │   └── typing_extensions.cpython-310.pyc
│       │   │           │   │   ├── cachecontrol
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── _cmd.cpython-310.pyc
│       │   │           │   │   │   │   ├── adapter.cpython-310.pyc
│       │   │           │   │   │   │   ├── cache.cpython-310.pyc
│       │   │           │   │   │   │   ├── compat.cpython-310.pyc
│       │   │           │   │   │   │   ├── controller.cpython-310.pyc
│       │   │           │   │   │   │   ├── filewrapper.cpython-310.pyc
│       │   │           │   │   │   │   ├── heuristics.cpython-310.pyc
│       │   │           │   │   │   │   ├── serialize.cpython-310.pyc
│       │   │           │   │   │   │   └── wrapper.cpython-310.pyc
│       │   │           │   │   │   ├── _cmd.py
│       │   │           │   │   │   ├── adapter.py
│       │   │           │   │   │   ├── cache.py
│       │   │           │   │   │   ├── caches
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── file_cache.cpython-310.pyc
│       │   │           │   │   │   │   │   └── redis_cache.cpython-310.pyc
│       │   │           │   │   │   │   ├── file_cache.py
│       │   │           │   │   │   │   └── redis_cache.py
│       │   │           │   │   │   ├── compat.py
│       │   │           │   │   │   ├── controller.py
│       │   │           │   │   │   ├── filewrapper.py
│       │   │           │   │   │   ├── heuristics.py
│       │   │           │   │   │   ├── serialize.py
│       │   │           │   │   │   └── wrapper.py
│       │   │           │   │   ├── certifi
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __main__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── __main__.cpython-310.pyc
│       │   │           │   │   │   │   └── core.cpython-310.pyc
│       │   │           │   │   │   ├── cacert.pem
│       │   │           │   │   │   └── core.py
│       │   │           │   │   ├── chardet
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── big5freq.cpython-310.pyc
│       │   │           │   │   │   │   ├── big5prober.cpython-310.pyc
│       │   │           │   │   │   │   ├── chardistribution.cpython-310.pyc
│       │   │           │   │   │   │   ├── charsetgroupprober.cpython-310.pyc
│       │   │           │   │   │   │   ├── charsetprober.cpython-310.pyc
│       │   │           │   │   │   │   ├── codingstatemachine.cpython-310.pyc
│       │   │           │   │   │   │   ├── compat.cpython-310.pyc
│       │   │           │   │   │   │   ├── cp949prober.cpython-310.pyc
│       │   │           │   │   │   │   ├── enums.cpython-310.pyc
│       │   │           │   │   │   │   ├── escprober.cpython-310.pyc
│       │   │           │   │   │   │   ├── escsm.cpython-310.pyc
│       │   │           │   │   │   │   ├── eucjpprober.cpython-310.pyc
│       │   │           │   │   │   │   ├── euckrfreq.cpython-310.pyc
│       │   │           │   │   │   │   ├── euckrprober.cpython-310.pyc
│       │   │           │   │   │   │   ├── euctwfreq.cpython-310.pyc
│       │   │           │   │   │   │   ├── euctwprober.cpython-310.pyc
│       │   │           │   │   │   │   ├── gb2312freq.cpython-310.pyc
│       │   │           │   │   │   │   ├── gb2312prober.cpython-310.pyc
│       │   │           │   │   │   │   ├── hebrewprober.cpython-310.pyc
│       │   │           │   │   │   │   ├── jisfreq.cpython-310.pyc
│       │   │           │   │   │   │   ├── jpcntx.cpython-310.pyc
│       │   │           │   │   │   │   ├── langbulgarianmodel.cpython-310.pyc
│       │   │           │   │   │   │   ├── langgreekmodel.cpython-310.pyc
│       │   │           │   │   │   │   ├── langhebrewmodel.cpython-310.pyc
│       │   │           │   │   │   │   ├── langhungarianmodel.cpython-310.pyc
│       │   │           │   │   │   │   ├── langrussianmodel.cpython-310.pyc
│       │   │           │   │   │   │   ├── langthaimodel.cpython-310.pyc
│       │   │           │   │   │   │   ├── langturkishmodel.cpython-310.pyc
│       │   │           │   │   │   │   ├── latin1prober.cpython-310.pyc
│       │   │           │   │   │   │   ├── mbcharsetprober.cpython-310.pyc
│       │   │           │   │   │   │   ├── mbcsgroupprober.cpython-310.pyc
│       │   │           │   │   │   │   ├── mbcssm.cpython-310.pyc
│       │   │           │   │   │   │   ├── sbcharsetprober.cpython-310.pyc
│       │   │           │   │   │   │   ├── sbcsgroupprober.cpython-310.pyc
│       │   │           │   │   │   │   ├── sjisprober.cpython-310.pyc
│       │   │           │   │   │   │   ├── universaldetector.cpython-310.pyc
│       │   │           │   │   │   │   ├── utf8prober.cpython-310.pyc
│       │   │           │   │   │   │   └── version.cpython-310.pyc
│       │   │           │   │   │   ├── big5freq.py
│       │   │           │   │   │   ├── big5prober.py
│       │   │           │   │   │   ├── chardistribution.py
│       │   │           │   │   │   ├── charsetgroupprober.py
│       │   │           │   │   │   ├── charsetprober.py
│       │   │           │   │   │   ├── cli
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   └── chardetect.cpython-310.pyc
│       │   │           │   │   │   │   └── chardetect.py
│       │   │           │   │   │   ├── codingstatemachine.py
│       │   │           │   │   │   ├── compat.py
│       │   │           │   │   │   ├── cp949prober.py
│       │   │           │   │   │   ├── enums.py
│       │   │           │   │   │   ├── escprober.py
│       │   │           │   │   │   ├── escsm.py
│       │   │           │   │   │   ├── eucjpprober.py
│       │   │           │   │   │   ├── euckrfreq.py
│       │   │           │   │   │   ├── euckrprober.py
│       │   │           │   │   │   ├── euctwfreq.py
│       │   │           │   │   │   ├── euctwprober.py
│       │   │           │   │   │   ├── gb2312freq.py
│       │   │           │   │   │   ├── gb2312prober.py
│       │   │           │   │   │   ├── hebrewprober.py
│       │   │           │   │   │   ├── jisfreq.py
│       │   │           │   │   │   ├── jpcntx.py
│       │   │           │   │   │   ├── langbulgarianmodel.py
│       │   │           │   │   │   ├── langgreekmodel.py
│       │   │           │   │   │   ├── langhebrewmodel.py
│       │   │           │   │   │   ├── langhungarianmodel.py
│       │   │           │   │   │   ├── langrussianmodel.py
│       │   │           │   │   │   ├── langthaimodel.py
│       │   │           │   │   │   ├── langturkishmodel.py
│       │   │           │   │   │   ├── latin1prober.py
│       │   │           │   │   │   ├── mbcharsetprober.py
│       │   │           │   │   │   ├── mbcsgroupprober.py
│       │   │           │   │   │   ├── mbcssm.py
│       │   │           │   │   │   ├── metadata
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   └── languages.cpython-310.pyc
│       │   │           │   │   │   │   └── languages.py
│       │   │           │   │   │   ├── sbcharsetprober.py
│       │   │           │   │   │   ├── sbcsgroupprober.py
│       │   │           │   │   │   ├── sjisprober.py
│       │   │           │   │   │   ├── universaldetector.py
│       │   │           │   │   │   ├── utf8prober.py
│       │   │           │   │   │   └── version.py
│       │   │           │   │   ├── colorama
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── ansi.cpython-310.pyc
│       │   │           │   │   │   │   ├── ansitowin32.cpython-310.pyc
│       │   │           │   │   │   │   ├── initialise.cpython-310.pyc
│       │   │           │   │   │   │   ├── win32.cpython-310.pyc
│       │   │           │   │   │   │   └── winterm.cpython-310.pyc
│       │   │           │   │   │   ├── ansi.py
│       │   │           │   │   │   ├── ansitowin32.py
│       │   │           │   │   │   ├── initialise.py
│       │   │           │   │   │   ├── win32.py
│       │   │           │   │   │   └── winterm.py
│       │   │           │   │   ├── distlib
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── compat.cpython-310.pyc
│       │   │           │   │   │   │   ├── database.cpython-310.pyc
│       │   │           │   │   │   │   ├── index.cpython-310.pyc
│       │   │           │   │   │   │   ├── locators.cpython-310.pyc
│       │   │           │   │   │   │   ├── manifest.cpython-310.pyc
│       │   │           │   │   │   │   ├── markers.cpython-310.pyc
│       │   │           │   │   │   │   ├── metadata.cpython-310.pyc
│       │   │           │   │   │   │   ├── resources.cpython-310.pyc
│       │   │           │   │   │   │   ├── scripts.cpython-310.pyc
│       │   │           │   │   │   │   ├── util.cpython-310.pyc
│       │   │           │   │   │   │   ├── version.cpython-310.pyc
│       │   │           │   │   │   │   └── wheel.cpython-310.pyc
│       │   │           │   │   │   ├── compat.py
│       │   │           │   │   │   ├── database.py
│       │   │           │   │   │   ├── index.py
│       │   │           │   │   │   ├── locators.py
│       │   │           │   │   │   ├── manifest.py
│       │   │           │   │   │   ├── markers.py
│       │   │           │   │   │   ├── metadata.py
│       │   │           │   │   │   ├── resources.py
│       │   │           │   │   │   ├── scripts.py
│       │   │           │   │   │   ├── util.py
│       │   │           │   │   │   ├── version.py
│       │   │           │   │   │   └── wheel.py
│       │   │           │   │   ├── distro.py
│       │   │           │   │   ├── html5lib
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── _ihatexml.cpython-310.pyc
│       │   │           │   │   │   │   ├── _inputstream.cpython-310.pyc
│       │   │           │   │   │   │   ├── _tokenizer.cpython-310.pyc
│       │   │           │   │   │   │   ├── _utils.cpython-310.pyc
│       │   │           │   │   │   │   ├── constants.cpython-310.pyc
│       │   │           │   │   │   │   ├── html5parser.cpython-310.pyc
│       │   │           │   │   │   │   └── serializer.cpython-310.pyc
│       │   │           │   │   │   ├── _ihatexml.py
│       │   │           │   │   │   ├── _inputstream.py
│       │   │           │   │   │   ├── _tokenizer.py
│       │   │           │   │   │   ├── _trie
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── _base.cpython-310.pyc
│       │   │           │   │   │   │   │   └── py.cpython-310.pyc
│       │   │           │   │   │   │   ├── _base.py
│       │   │           │   │   │   │   └── py.py
│       │   │           │   │   │   ├── _utils.py
│       │   │           │   │   │   ├── constants.py
│       │   │           │   │   │   ├── filters
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── alphabeticalattributes.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── base.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── inject_meta_charset.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── lint.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── optionaltags.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── sanitizer.cpython-310.pyc
│       │   │           │   │   │   │   │   └── whitespace.cpython-310.pyc
│       │   │           │   │   │   │   ├── alphabeticalattributes.py
│       │   │           │   │   │   │   ├── base.py
│       │   │           │   │   │   │   ├── inject_meta_charset.py
│       │   │           │   │   │   │   ├── lint.py
│       │   │           │   │   │   │   ├── optionaltags.py
│       │   │           │   │   │   │   ├── sanitizer.py
│       │   │           │   │   │   │   └── whitespace.py
│       │   │           │   │   │   ├── html5parser.py
│       │   │           │   │   │   ├── serializer.py
│       │   │           │   │   │   ├── treeadapters
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── genshi.cpython-310.pyc
│       │   │           │   │   │   │   │   └── sax.cpython-310.pyc
│       │   │           │   │   │   │   ├── genshi.py
│       │   │           │   │   │   │   └── sax.py
│       │   │           │   │   │   ├── treebuilders
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── base.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── dom.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── etree.cpython-310.pyc
│       │   │           │   │   │   │   │   └── etree_lxml.cpython-310.pyc
│       │   │           │   │   │   │   ├── base.py
│       │   │           │   │   │   │   ├── dom.py
│       │   │           │   │   │   │   ├── etree.py
│       │   │           │   │   │   │   └── etree_lxml.py
│       │   │           │   │   │   └── treewalkers
│       │   │           │   │   │       ├── __init__.py
│       │   │           │   │   │       ├── __pycache__
│       │   │           │   │   │       │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │       │   ├── base.cpython-310.pyc
│       │   │           │   │   │       │   ├── dom.cpython-310.pyc
│       │   │           │   │   │       │   ├── etree.cpython-310.pyc
│       │   │           │   │   │       │   ├── etree_lxml.cpython-310.pyc
│       │   │           │   │   │       │   └── genshi.cpython-310.pyc
│       │   │           │   │   │       ├── base.py
│       │   │           │   │   │       ├── dom.py
│       │   │           │   │   │       ├── etree.py
│       │   │           │   │   │       ├── etree_lxml.py
│       │   │           │   │   │       └── genshi.py
│       │   │           │   │   ├── idna
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── codec.cpython-310.pyc
│       │   │           │   │   │   │   ├── compat.cpython-310.pyc
│       │   │           │   │   │   │   ├── core.cpython-310.pyc
│       │   │           │   │   │   │   ├── idnadata.cpython-310.pyc
│       │   │           │   │   │   │   ├── intranges.cpython-310.pyc
│       │   │           │   │   │   │   ├── package_data.cpython-310.pyc
│       │   │           │   │   │   │   └── uts46data.cpython-310.pyc
│       │   │           │   │   │   ├── codec.py
│       │   │           │   │   │   ├── compat.py
│       │   │           │   │   │   ├── core.py
│       │   │           │   │   │   ├── idnadata.py
│       │   │           │   │   │   ├── intranges.py
│       │   │           │   │   │   ├── package_data.py
│       │   │           │   │   │   └── uts46data.py
│       │   │           │   │   ├── msgpack
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── _version.cpython-310.pyc
│       │   │           │   │   │   │   ├── exceptions.cpython-310.pyc
│       │   │           │   │   │   │   ├── ext.cpython-310.pyc
│       │   │           │   │   │   │   └── fallback.cpython-310.pyc
│       │   │           │   │   │   ├── _version.py
│       │   │           │   │   │   ├── exceptions.py
│       │   │           │   │   │   ├── ext.py
│       │   │           │   │   │   └── fallback.py
│       │   │           │   │   ├── packaging
│       │   │           │   │   │   ├── __about__.py
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __about__.cpython-310.pyc
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── _manylinux.cpython-310.pyc
│       │   │           │   │   │   │   ├── _musllinux.cpython-310.pyc
│       │   │           │   │   │   │   ├── _structures.cpython-310.pyc
│       │   │           │   │   │   │   ├── markers.cpython-310.pyc
│       │   │           │   │   │   │   ├── requirements.cpython-310.pyc
│       │   │           │   │   │   │   ├── specifiers.cpython-310.pyc
│       │   │           │   │   │   │   ├── tags.cpython-310.pyc
│       │   │           │   │   │   │   ├── utils.cpython-310.pyc
│       │   │           │   │   │   │   └── version.cpython-310.pyc
│       │   │           │   │   │   ├── _manylinux.py
│       │   │           │   │   │   ├── _musllinux.py
│       │   │           │   │   │   ├── _structures.py
│       │   │           │   │   │   ├── markers.py
│       │   │           │   │   │   ├── requirements.py
│       │   │           │   │   │   ├── specifiers.py
│       │   │           │   │   │   ├── tags.py
│       │   │           │   │   │   ├── utils.py
│       │   │           │   │   │   └── version.py
│       │   │           │   │   ├── pep517
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── build.cpython-310.pyc
│       │   │           │   │   │   │   ├── check.cpython-310.pyc
│       │   │           │   │   │   │   ├── colorlog.cpython-310.pyc
│       │   │           │   │   │   │   ├── compat.cpython-310.pyc
│       │   │           │   │   │   │   ├── dirtools.cpython-310.pyc
│       │   │           │   │   │   │   ├── envbuild.cpython-310.pyc
│       │   │           │   │   │   │   ├── meta.cpython-310.pyc
│       │   │           │   │   │   │   └── wrappers.cpython-310.pyc
│       │   │           │   │   │   ├── build.py
│       │   │           │   │   │   ├── check.py
│       │   │           │   │   │   ├── colorlog.py
│       │   │           │   │   │   ├── compat.py
│       │   │           │   │   │   ├── dirtools.py
│       │   │           │   │   │   ├── envbuild.py
│       │   │           │   │   │   ├── in_process
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   └── _in_process.cpython-310.pyc
│       │   │           │   │   │   │   └── _in_process.py
│       │   │           │   │   │   ├── meta.py
│       │   │           │   │   │   └── wrappers.py
│       │   │           │   │   ├── pkg_resources
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   └── py31compat.cpython-310.pyc
│       │   │           │   │   │   └── py31compat.py
│       │   │           │   │   ├── platformdirs
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __main__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── __main__.cpython-310.pyc
│       │   │           │   │   │   │   ├── android.cpython-310.pyc
│       │   │           │   │   │   │   ├── api.cpython-310.pyc
│       │   │           │   │   │   │   ├── macos.cpython-310.pyc
│       │   │           │   │   │   │   ├── unix.cpython-310.pyc
│       │   │           │   │   │   │   ├── version.cpython-310.pyc
│       │   │           │   │   │   │   └── windows.cpython-310.pyc
│       │   │           │   │   │   ├── android.py
│       │   │           │   │   │   ├── api.py
│       │   │           │   │   │   ├── macos.py
│       │   │           │   │   │   ├── unix.py
│       │   │           │   │   │   ├── version.py
│       │   │           │   │   │   └── windows.py
│       │   │           │   │   ├── progress
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── bar.cpython-310.pyc
│       │   │           │   │   │   │   ├── colors.cpython-310.pyc
│       │   │           │   │   │   │   ├── counter.cpython-310.pyc
│       │   │           │   │   │   │   └── spinner.cpython-310.pyc
│       │   │           │   │   │   ├── bar.py
│       │   │           │   │   │   ├── colors.py
│       │   │           │   │   │   ├── counter.py
│       │   │           │   │   │   └── spinner.py
│       │   │           │   │   ├── pygments
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __main__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── __main__.cpython-310.pyc
│       │   │           │   │   │   │   ├── cmdline.cpython-310.pyc
│       │   │           │   │   │   │   ├── console.cpython-310.pyc
│       │   │           │   │   │   │   ├── filter.cpython-310.pyc
│       │   │           │   │   │   │   ├── formatter.cpython-310.pyc
│       │   │           │   │   │   │   ├── lexer.cpython-310.pyc
│       │   │           │   │   │   │   ├── modeline.cpython-310.pyc
│       │   │           │   │   │   │   ├── plugin.cpython-310.pyc
│       │   │           │   │   │   │   ├── regexopt.cpython-310.pyc
│       │   │           │   │   │   │   ├── scanner.cpython-310.pyc
│       │   │           │   │   │   │   ├── sphinxext.cpython-310.pyc
│       │   │           │   │   │   │   ├── style.cpython-310.pyc
│       │   │           │   │   │   │   ├── token.cpython-310.pyc
│       │   │           │   │   │   │   ├── unistring.cpython-310.pyc
│       │   │           │   │   │   │   └── util.cpython-310.pyc
│       │   │           │   │   │   ├── cmdline.py
│       │   │           │   │   │   ├── console.py
│       │   │           │   │   │   ├── filter.py
│       │   │           │   │   │   ├── filters
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   └── __pycache__
│       │   │           │   │   │   │       └── __init__.cpython-310.pyc
│       │   │           │   │   │   ├── formatter.py
│       │   │           │   │   │   ├── formatters
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── _mapping.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── bbcode.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── groff.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── html.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── img.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── irc.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── latex.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── other.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── pangomarkup.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── rtf.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── svg.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── terminal.cpython-310.pyc
│       │   │           │   │   │   │   │   └── terminal256.cpython-310.pyc
│       │   │           │   │   │   │   ├── _mapping.py
│       │   │           │   │   │   │   ├── bbcode.py
│       │   │           │   │   │   │   ├── groff.py
│       │   │           │   │   │   │   ├── html.py
│       │   │           │   │   │   │   ├── img.py
│       │   │           │   │   │   │   ├── irc.py
│       │   │           │   │   │   │   ├── latex.py
│       │   │           │   │   │   │   ├── other.py
│       │   │           │   │   │   │   ├── pangomarkup.py
│       │   │           │   │   │   │   ├── rtf.py
│       │   │           │   │   │   │   ├── svg.py
│       │   │           │   │   │   │   ├── terminal.py
│       │   │           │   │   │   │   └── terminal256.py
│       │   │           │   │   │   ├── lexer.py
│       │   │           │   │   │   ├── lexers
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── _mapping.cpython-310.pyc
│       │   │           │   │   │   │   │   └── python.cpython-310.pyc
│       │   │           │   │   │   │   ├── _mapping.py
│       │   │           │   │   │   │   └── python.py
│       │   │           │   │   │   ├── modeline.py
│       │   │           │   │   │   ├── plugin.py
│       │   │           │   │   │   ├── regexopt.py
│       │   │           │   │   │   ├── scanner.py
│       │   │           │   │   │   ├── sphinxext.py
│       │   │           │   │   │   ├── style.py
│       │   │           │   │   │   ├── styles
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   └── __pycache__
│       │   │           │   │   │   │       └── __init__.cpython-310.pyc
│       │   │           │   │   │   ├── token.py
│       │   │           │   │   │   ├── unistring.py
│       │   │           │   │   │   └── util.py
│       │   │           │   │   ├── pyparsing
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── actions.cpython-310.pyc
│       │   │           │   │   │   │   ├── common.cpython-310.pyc
│       │   │           │   │   │   │   ├── core.cpython-310.pyc
│       │   │           │   │   │   │   ├── exceptions.cpython-310.pyc
│       │   │           │   │   │   │   ├── helpers.cpython-310.pyc
│       │   │           │   │   │   │   ├── results.cpython-310.pyc
│       │   │           │   │   │   │   ├── testing.cpython-310.pyc
│       │   │           │   │   │   │   ├── unicode.cpython-310.pyc
│       │   │           │   │   │   │   └── util.cpython-310.pyc
│       │   │           │   │   │   ├── actions.py
│       │   │           │   │   │   ├── common.py
│       │   │           │   │   │   ├── core.py
│       │   │           │   │   │   ├── diagram
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   └── __pycache__
│       │   │           │   │   │   │       └── __init__.cpython-310.pyc
│       │   │           │   │   │   ├── exceptions.py
│       │   │           │   │   │   ├── helpers.py
│       │   │           │   │   │   ├── results.py
│       │   │           │   │   │   ├── testing.py
│       │   │           │   │   │   ├── unicode.py
│       │   │           │   │   │   └── util.py
│       │   │           │   │   ├── requests
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── __version__.cpython-310.pyc
│       │   │           │   │   │   │   ├── _internal_utils.cpython-310.pyc
│       │   │           │   │   │   │   ├── adapters.cpython-310.pyc
│       │   │           │   │   │   │   ├── api.cpython-310.pyc
│       │   │           │   │   │   │   ├── auth.cpython-310.pyc
│       │   │           │   │   │   │   ├── certs.cpython-310.pyc
│       │   │           │   │   │   │   ├── compat.cpython-310.pyc
│       │   │           │   │   │   │   ├── cookies.cpython-310.pyc
│       │   │           │   │   │   │   ├── exceptions.cpython-310.pyc
│       │   │           │   │   │   │   ├── help.cpython-310.pyc
│       │   │           │   │   │   │   ├── hooks.cpython-310.pyc
│       │   │           │   │   │   │   ├── models.cpython-310.pyc
│       │   │           │   │   │   │   ├── packages.cpython-310.pyc
│       │   │           │   │   │   │   ├── sessions.cpython-310.pyc
│       │   │           │   │   │   │   ├── status_codes.cpython-310.pyc
│       │   │           │   │   │   │   ├── structures.cpython-310.pyc
│       │   │           │   │   │   │   └── utils.cpython-310.pyc
│       │   │           │   │   │   ├── __version__.py
│       │   │           │   │   │   ├── _internal_utils.py
│       │   │           │   │   │   ├── adapters.py
│       │   │           │   │   │   ├── api.py
│       │   │           │   │   │   ├── auth.py
│       │   │           │   │   │   ├── certs.py
│       │   │           │   │   │   ├── compat.py
│       │   │           │   │   │   ├── cookies.py
│       │   │           │   │   │   ├── exceptions.py
│       │   │           │   │   │   ├── help.py
│       │   │           │   │   │   ├── hooks.py
│       │   │           │   │   │   ├── models.py
│       │   │           │   │   │   ├── packages.py
│       │   │           │   │   │   ├── sessions.py
│       │   │           │   │   │   ├── status_codes.py
│       │   │           │   │   │   ├── structures.py
│       │   │           │   │   │   └── utils.py
│       │   │           │   │   ├── resolvelib
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── providers.cpython-310.pyc
│       │   │           │   │   │   │   ├── reporters.cpython-310.pyc
│       │   │           │   │   │   │   ├── resolvers.cpython-310.pyc
│       │   │           │   │   │   │   └── structs.cpython-310.pyc
│       │   │           │   │   │   ├── compat
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   └── collections_abc.cpython-310.pyc
│       │   │           │   │   │   │   └── collections_abc.py
│       │   │           │   │   │   ├── providers.py
│       │   │           │   │   │   ├── reporters.py
│       │   │           │   │   │   ├── resolvers.py
│       │   │           │   │   │   └── structs.py
│       │   │           │   │   ├── rich
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __main__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── __main__.cpython-310.pyc
│       │   │           │   │   │   │   ├── _cell_widths.cpython-310.pyc
│       │   │           │   │   │   │   ├── _emoji_codes.cpython-310.pyc
│       │   │           │   │   │   │   ├── _emoji_replace.cpython-310.pyc
│       │   │           │   │   │   │   ├── _extension.cpython-310.pyc
│       │   │           │   │   │   │   ├── _inspect.cpython-310.pyc
│       │   │           │   │   │   │   ├── _log_render.cpython-310.pyc
│       │   │           │   │   │   │   ├── _loop.cpython-310.pyc
│       │   │           │   │   │   │   ├── _lru_cache.cpython-310.pyc
│       │   │           │   │   │   │   ├── _palettes.cpython-310.pyc
│       │   │           │   │   │   │   ├── _pick.cpython-310.pyc
│       │   │           │   │   │   │   ├── _ratio.cpython-310.pyc
│       │   │           │   │   │   │   ├── _spinners.cpython-310.pyc
│       │   │           │   │   │   │   ├── _stack.cpython-310.pyc
│       │   │           │   │   │   │   ├── _timer.cpython-310.pyc
│       │   │           │   │   │   │   ├── _windows.cpython-310.pyc
│       │   │           │   │   │   │   ├── _wrap.cpython-310.pyc
│       │   │           │   │   │   │   ├── abc.cpython-310.pyc
│       │   │           │   │   │   │   ├── align.cpython-310.pyc
│       │   │           │   │   │   │   ├── ansi.cpython-310.pyc
│       │   │           │   │   │   │   ├── bar.cpython-310.pyc
│       │   │           │   │   │   │   ├── box.cpython-310.pyc
│       │   │           │   │   │   │   ├── cells.cpython-310.pyc
│       │   │           │   │   │   │   ├── color.cpython-310.pyc
│       │   │           │   │   │   │   ├── color_triplet.cpython-310.pyc
│       │   │           │   │   │   │   ├── columns.cpython-310.pyc
│       │   │           │   │   │   │   ├── console.cpython-310.pyc
│       │   │           │   │   │   │   ├── constrain.cpython-310.pyc
│       │   │           │   │   │   │   ├── containers.cpython-310.pyc
│       │   │           │   │   │   │   ├── control.cpython-310.pyc
│       │   │           │   │   │   │   ├── default_styles.cpython-310.pyc
│       │   │           │   │   │   │   ├── diagnose.cpython-310.pyc
│       │   │           │   │   │   │   ├── emoji.cpython-310.pyc
│       │   │           │   │   │   │   ├── errors.cpython-310.pyc
│       │   │           │   │   │   │   ├── file_proxy.cpython-310.pyc
│       │   │           │   │   │   │   ├── filesize.cpython-310.pyc
│       │   │           │   │   │   │   ├── highlighter.cpython-310.pyc
│       │   │           │   │   │   │   ├── json.cpython-310.pyc
│       │   │           │   │   │   │   ├── jupyter.cpython-310.pyc
│       │   │           │   │   │   │   ├── layout.cpython-310.pyc
│       │   │           │   │   │   │   ├── live.cpython-310.pyc
│       │   │           │   │   │   │   ├── live_render.cpython-310.pyc
│       │   │           │   │   │   │   ├── logging.cpython-310.pyc
│       │   │           │   │   │   │   ├── markup.cpython-310.pyc
│       │   │           │   │   │   │   ├── measure.cpython-310.pyc
│       │   │           │   │   │   │   ├── padding.cpython-310.pyc
│       │   │           │   │   │   │   ├── pager.cpython-310.pyc
│       │   │           │   │   │   │   ├── palette.cpython-310.pyc
│       │   │           │   │   │   │   ├── panel.cpython-310.pyc
│       │   │           │   │   │   │   ├── pretty.cpython-310.pyc
│       │   │           │   │   │   │   ├── progress.cpython-310.pyc
│       │   │           │   │   │   │   ├── progress_bar.cpython-310.pyc
│       │   │           │   │   │   │   ├── prompt.cpython-310.pyc
│       │   │           │   │   │   │   ├── protocol.cpython-310.pyc
│       │   │           │   │   │   │   ├── region.cpython-310.pyc
│       │   │           │   │   │   │   ├── repr.cpython-310.pyc
│       │   │           │   │   │   │   ├── rule.cpython-310.pyc
│       │   │           │   │   │   │   ├── scope.cpython-310.pyc
│       │   │           │   │   │   │   ├── screen.cpython-310.pyc
│       │   │           │   │   │   │   ├── segment.cpython-310.pyc
│       │   │           │   │   │   │   ├── spinner.cpython-310.pyc
│       │   │           │   │   │   │   ├── status.cpython-310.pyc
│       │   │           │   │   │   │   ├── style.cpython-310.pyc
│       │   │           │   │   │   │   ├── styled.cpython-310.pyc
│       │   │           │   │   │   │   ├── syntax.cpython-310.pyc
│       │   │           │   │   │   │   ├── table.cpython-310.pyc
│       │   │           │   │   │   │   ├── tabulate.cpython-310.pyc
│       │   │           │   │   │   │   ├── terminal_theme.cpython-310.pyc
│       │   │           │   │   │   │   ├── text.cpython-310.pyc
│       │   │           │   │   │   │   ├── theme.cpython-310.pyc
│       │   │           │   │   │   │   ├── themes.cpython-310.pyc
│       │   │           │   │   │   │   ├── traceback.cpython-310.pyc
│       │   │           │   │   │   │   └── tree.cpython-310.pyc
│       │   │           │   │   │   ├── _cell_widths.py
│       │   │           │   │   │   ├── _emoji_codes.py
│       │   │           │   │   │   ├── _emoji_replace.py
│       │   │           │   │   │   ├── _extension.py
│       │   │           │   │   │   ├── _inspect.py
│       │   │           │   │   │   ├── _log_render.py
│       │   │           │   │   │   ├── _loop.py
│       │   │           │   │   │   ├── _lru_cache.py
│       │   │           │   │   │   ├── _palettes.py
│       │   │           │   │   │   ├── _pick.py
│       │   │           │   │   │   ├── _ratio.py
│       │   │           │   │   │   ├── _spinners.py
│       │   │           │   │   │   ├── _stack.py
│       │   │           │   │   │   ├── _timer.py
│       │   │           │   │   │   ├── _windows.py
│       │   │           │   │   │   ├── _wrap.py
│       │   │           │   │   │   ├── abc.py
│       │   │           │   │   │   ├── align.py
│       │   │           │   │   │   ├── ansi.py
│       │   │           │   │   │   ├── bar.py
│       │   │           │   │   │   ├── box.py
│       │   │           │   │   │   ├── cells.py
│       │   │           │   │   │   ├── color.py
│       │   │           │   │   │   ├── color_triplet.py
│       │   │           │   │   │   ├── columns.py
│       │   │           │   │   │   ├── console.py
│       │   │           │   │   │   ├── constrain.py
│       │   │           │   │   │   ├── containers.py
│       │   │           │   │   │   ├── control.py
│       │   │           │   │   │   ├── default_styles.py
│       │   │           │   │   │   ├── diagnose.py
│       │   │           │   │   │   ├── emoji.py
│       │   │           │   │   │   ├── errors.py
│       │   │           │   │   │   ├── file_proxy.py
│       │   │           │   │   │   ├── filesize.py
│       │   │           │   │   │   ├── highlighter.py
│       │   │           │   │   │   ├── json.py
│       │   │           │   │   │   ├── jupyter.py
│       │   │           │   │   │   ├── layout.py
│       │   │           │   │   │   ├── live.py
│       │   │           │   │   │   ├── live_render.py
│       │   │           │   │   │   ├── logging.py
│       │   │           │   │   │   ├── markup.py
│       │   │           │   │   │   ├── measure.py
│       │   │           │   │   │   ├── padding.py
│       │   │           │   │   │   ├── pager.py
│       │   │           │   │   │   ├── palette.py
│       │   │           │   │   │   ├── panel.py
│       │   │           │   │   │   ├── pretty.py
│       │   │           │   │   │   ├── progress.py
│       │   │           │   │   │   ├── progress_bar.py
│       │   │           │   │   │   ├── prompt.py
│       │   │           │   │   │   ├── protocol.py
│       │   │           │   │   │   ├── region.py
│       │   │           │   │   │   ├── repr.py
│       │   │           │   │   │   ├── rule.py
│       │   │           │   │   │   ├── scope.py
│       │   │           │   │   │   ├── screen.py
│       │   │           │   │   │   ├── segment.py
│       │   │           │   │   │   ├── spinner.py
│       │   │           │   │   │   ├── status.py
│       │   │           │   │   │   ├── style.py
│       │   │           │   │   │   ├── styled.py
│       │   │           │   │   │   ├── syntax.py
│       │   │           │   │   │   ├── table.py
│       │   │           │   │   │   ├── tabulate.py
│       │   │           │   │   │   ├── terminal_theme.py
│       │   │           │   │   │   ├── text.py
│       │   │           │   │   │   ├── theme.py
│       │   │           │   │   │   ├── themes.py
│       │   │           │   │   │   ├── traceback.py
│       │   │           │   │   │   └── tree.py
│       │   │           │   │   ├── six.py
│       │   │           │   │   ├── tenacity
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── _asyncio.cpython-310.pyc
│       │   │           │   │   │   │   ├── _utils.cpython-310.pyc
│       │   │           │   │   │   │   ├── after.cpython-310.pyc
│       │   │           │   │   │   │   ├── before.cpython-310.pyc
│       │   │           │   │   │   │   ├── before_sleep.cpython-310.pyc
│       │   │           │   │   │   │   ├── nap.cpython-310.pyc
│       │   │           │   │   │   │   ├── retry.cpython-310.pyc
│       │   │           │   │   │   │   ├── stop.cpython-310.pyc
│       │   │           │   │   │   │   ├── tornadoweb.cpython-310.pyc
│       │   │           │   │   │   │   └── wait.cpython-310.pyc
│       │   │           │   │   │   ├── _asyncio.py
│       │   │           │   │   │   ├── _utils.py
│       │   │           │   │   │   ├── after.py
│       │   │           │   │   │   ├── before.py
│       │   │           │   │   │   ├── before_sleep.py
│       │   │           │   │   │   ├── nap.py
│       │   │           │   │   │   ├── retry.py
│       │   │           │   │   │   ├── stop.py
│       │   │           │   │   │   ├── tornadoweb.py
│       │   │           │   │   │   └── wait.py
│       │   │           │   │   ├── tomli
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── _parser.cpython-310.pyc
│       │   │           │   │   │   │   └── _re.cpython-310.pyc
│       │   │           │   │   │   ├── _parser.py
│       │   │           │   │   │   └── _re.py
│       │   │           │   │   ├── typing_extensions.py
│       │   │           │   │   ├── urllib3
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── _collections.cpython-310.pyc
│       │   │           │   │   │   │   ├── _version.cpython-310.pyc
│       │   │           │   │   │   │   ├── connection.cpython-310.pyc
│       │   │           │   │   │   │   ├── connectionpool.cpython-310.pyc
│       │   │           │   │   │   │   ├── exceptions.cpython-310.pyc
│       │   │           │   │   │   │   ├── fields.cpython-310.pyc
│       │   │           │   │   │   │   ├── filepost.cpython-310.pyc
│       │   │           │   │   │   │   ├── poolmanager.cpython-310.pyc
│       │   │           │   │   │   │   ├── request.cpython-310.pyc
│       │   │           │   │   │   │   └── response.cpython-310.pyc
│       │   │           │   │   │   ├── _collections.py
│       │   │           │   │   │   ├── _version.py
│       │   │           │   │   │   ├── connection.py
│       │   │           │   │   │   ├── connectionpool.py
│       │   │           │   │   │   ├── contrib
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── _appengine_environ.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── appengine.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── ntlmpool.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── pyopenssl.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── securetransport.cpython-310.pyc
│       │   │           │   │   │   │   │   └── socks.cpython-310.pyc
│       │   │           │   │   │   │   ├── _appengine_environ.py
│       │   │           │   │   │   │   ├── _securetransport
│       │   │           │   │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   │   ├── bindings.cpython-310.pyc
│       │   │           │   │   │   │   │   │   └── low_level.cpython-310.pyc
│       │   │           │   │   │   │   │   ├── bindings.py
│       │   │           │   │   │   │   │   └── low_level.py
│       │   │           │   │   │   │   ├── appengine.py
│       │   │           │   │   │   │   ├── ntlmpool.py
│       │   │           │   │   │   │   ├── pyopenssl.py
│       │   │           │   │   │   │   ├── securetransport.py
│       │   │           │   │   │   │   └── socks.py
│       │   │           │   │   │   ├── exceptions.py
│       │   │           │   │   │   ├── fields.py
│       │   │           │   │   │   ├── filepost.py
│       │   │           │   │   │   ├── packages
│       │   │           │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   └── six.cpython-310.pyc
│       │   │           │   │   │   │   ├── backports
│       │   │           │   │   │   │   │   ├── __init__.py
│       │   │           │   │   │   │   │   ├── __pycache__
│       │   │           │   │   │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   │   │   └── makefile.cpython-310.pyc
│       │   │           │   │   │   │   │   └── makefile.py
│       │   │           │   │   │   │   └── six.py
│       │   │           │   │   │   ├── poolmanager.py
│       │   │           │   │   │   ├── request.py
│       │   │           │   │   │   ├── response.py
│       │   │           │   │   │   └── util
│       │   │           │   │   │       ├── __init__.py
│       │   │           │   │   │       ├── __pycache__
│       │   │           │   │   │       │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │       │   ├── connection.cpython-310.pyc
│       │   │           │   │   │       │   ├── proxy.cpython-310.pyc
│       │   │           │   │   │       │   ├── queue.cpython-310.pyc
│       │   │           │   │   │       │   ├── request.cpython-310.pyc
│       │   │           │   │   │       │   ├── response.cpython-310.pyc
│       │   │           │   │   │       │   ├── retry.cpython-310.pyc
│       │   │           │   │   │       │   ├── ssl_.cpython-310.pyc
│       │   │           │   │   │       │   ├── ssl_match_hostname.cpython-310.pyc
│       │   │           │   │   │       │   ├── ssltransport.cpython-310.pyc
│       │   │           │   │   │       │   ├── timeout.cpython-310.pyc
│       │   │           │   │   │       │   ├── url.cpython-310.pyc
│       │   │           │   │   │       │   └── wait.cpython-310.pyc
│       │   │           │   │   │       ├── connection.py
│       │   │           │   │   │       ├── proxy.py
│       │   │           │   │   │       ├── queue.py
│       │   │           │   │   │       ├── request.py
│       │   │           │   │   │       ├── response.py
│       │   │           │   │   │       ├── retry.py
│       │   │           │   │   │       ├── ssl_.py
│       │   │           │   │   │       ├── ssl_match_hostname.py
│       │   │           │   │   │       ├── ssltransport.py
│       │   │           │   │   │       ├── timeout.py
│       │   │           │   │   │       ├── url.py
│       │   │           │   │   │       └── wait.py
│       │   │           │   │   ├── vendor.txt
│       │   │           │   │   └── webencodings
│       │   │           │   │       ├── __init__.py
│       │   │           │   │       ├── __pycache__
│       │   │           │   │       │   ├── __init__.cpython-310.pyc
│       │   │           │   │       │   ├── labels.cpython-310.pyc
│       │   │           │   │       │   ├── mklabels.cpython-310.pyc
│       │   │           │   │       │   ├── tests.cpython-310.pyc
│       │   │           │   │       │   └── x_user_defined.cpython-310.pyc
│       │   │           │   │       ├── labels.py
│       │   │           │   │       ├── mklabels.py
│       │   │           │   │       ├── tests.py
│       │   │           │   │       └── x_user_defined.py
│       │   │           │   └── py.typed
│       │   │           ├── pip-22.0.2.dist-info
│       │   │           │   ├── INSTALLER
│       │   │           │   ├── LICENSE.txt
│       │   │           │   ├── METADATA
│       │   │           │   ├── RECORD
│       │   │           │   ├── REQUESTED
│       │   │           │   ├── WHEEL
│       │   │           │   ├── entry_points.txt
│       │   │           │   └── top_level.txt
│       │   │           ├── pkg_resources
│       │   │           │   ├── __init__.py
│       │   │           │   ├── __pycache__
│       │   │           │   │   └── __init__.cpython-310.pyc
│       │   │           │   ├── _vendor
│       │   │           │   │   ├── __init__.py
│       │   │           │   │   ├── __pycache__
│       │   │           │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   ├── appdirs.cpython-310.pyc
│       │   │           │   │   │   └── pyparsing.cpython-310.pyc
│       │   │           │   │   ├── appdirs.py
│       │   │           │   │   ├── packaging
│       │   │           │   │   │   ├── __about__.py
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __about__.cpython-310.pyc
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── _manylinux.cpython-310.pyc
│       │   │           │   │   │   │   ├── _musllinux.cpython-310.pyc
│       │   │           │   │   │   │   ├── _structures.cpython-310.pyc
│       │   │           │   │   │   │   ├── markers.cpython-310.pyc
│       │   │           │   │   │   │   ├── requirements.cpython-310.pyc
│       │   │           │   │   │   │   ├── specifiers.cpython-310.pyc
│       │   │           │   │   │   │   ├── tags.cpython-310.pyc
│       │   │           │   │   │   │   ├── utils.cpython-310.pyc
│       │   │           │   │   │   │   └── version.cpython-310.pyc
│       │   │           │   │   │   ├── _manylinux.py
│       │   │           │   │   │   ├── _musllinux.py
│       │   │           │   │   │   ├── _structures.py
│       │   │           │   │   │   ├── markers.py
│       │   │           │   │   │   ├── requirements.py
│       │   │           │   │   │   ├── specifiers.py
│       │   │           │   │   │   ├── tags.py
│       │   │           │   │   │   ├── utils.py
│       │   │           │   │   │   └── version.py
│       │   │           │   │   └── pyparsing.py
│       │   │           │   ├── extern
│       │   │           │   │   ├── __init__.py
│       │   │           │   │   └── __pycache__
│       │   │           │   │       └── __init__.cpython-310.pyc
│       │   │           │   └── tests
│       │   │           │       └── data
│       │   │           │           └── my-test-package-source
│       │   │           │               ├── __pycache__
│       │   │           │               │   └── setup.cpython-310.pyc
│       │   │           │               └── setup.py
│       │   │           ├── setuptools
│       │   │           │   ├── __init__.py
│       │   │           │   ├── __pycache__
│       │   │           │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   ├── _deprecation_warning.cpython-310.pyc
│       │   │           │   │   ├── _imp.cpython-310.pyc
│       │   │           │   │   ├── archive_util.cpython-310.pyc
│       │   │           │   │   ├── build_meta.cpython-310.pyc
│       │   │           │   │   ├── config.cpython-310.pyc
│       │   │           │   │   ├── dep_util.cpython-310.pyc
│       │   │           │   │   ├── depends.cpython-310.pyc
│       │   │           │   │   ├── dist.cpython-310.pyc
│       │   │           │   │   ├── errors.cpython-310.pyc
│       │   │           │   │   ├── extension.cpython-310.pyc
│       │   │           │   │   ├── glob.cpython-310.pyc
│       │   │           │   │   ├── installer.cpython-310.pyc
│       │   │           │   │   ├── launch.cpython-310.pyc
│       │   │           │   │   ├── monkey.cpython-310.pyc
│       │   │           │   │   ├── msvc.cpython-310.pyc
│       │   │           │   │   ├── namespaces.cpython-310.pyc
│       │   │           │   │   ├── package_index.cpython-310.pyc
│       │   │           │   │   ├── py34compat.cpython-310.pyc
│       │   │           │   │   ├── sandbox.cpython-310.pyc
│       │   │           │   │   ├── unicode_utils.cpython-310.pyc
│       │   │           │   │   ├── version.cpython-310.pyc
│       │   │           │   │   ├── wheel.cpython-310.pyc
│       │   │           │   │   └── windows_support.cpython-310.pyc
│       │   │           │   ├── _deprecation_warning.py
│       │   │           │   ├── _distutils
│       │   │           │   │   ├── __init__.py
│       │   │           │   │   ├── __pycache__
│       │   │           │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   ├── _msvccompiler.cpython-310.pyc
│       │   │           │   │   │   ├── archive_util.cpython-310.pyc
│       │   │           │   │   │   ├── bcppcompiler.cpython-310.pyc
│       │   │           │   │   │   ├── ccompiler.cpython-310.pyc
│       │   │           │   │   │   ├── cmd.cpython-310.pyc
│       │   │           │   │   │   ├── config.cpython-310.pyc
│       │   │           │   │   │   ├── core.cpython-310.pyc
│       │   │           │   │   │   ├── cygwinccompiler.cpython-310.pyc
│       │   │           │   │   │   ├── debug.cpython-310.pyc
│       │   │           │   │   │   ├── dep_util.cpython-310.pyc
│       │   │           │   │   │   ├── dir_util.cpython-310.pyc
│       │   │           │   │   │   ├── dist.cpython-310.pyc
│       │   │           │   │   │   ├── errors.cpython-310.pyc
│       │   │           │   │   │   ├── extension.cpython-310.pyc
│       │   │           │   │   │   ├── fancy_getopt.cpython-310.pyc
│       │   │           │   │   │   ├── file_util.cpython-310.pyc
│       │   │           │   │   │   ├── filelist.cpython-310.pyc
│       │   │           │   │   │   ├── log.cpython-310.pyc
│       │   │           │   │   │   ├── msvc9compiler.cpython-310.pyc
│       │   │           │   │   │   ├── msvccompiler.cpython-310.pyc
│       │   │           │   │   │   ├── py35compat.cpython-310.pyc
│       │   │           │   │   │   ├── py38compat.cpython-310.pyc
│       │   │           │   │   │   ├── spawn.cpython-310.pyc
│       │   │           │   │   │   ├── sysconfig.cpython-310.pyc
│       │   │           │   │   │   ├── text_file.cpython-310.pyc
│       │   │           │   │   │   ├── unixccompiler.cpython-310.pyc
│       │   │           │   │   │   ├── util.cpython-310.pyc
│       │   │           │   │   │   ├── version.cpython-310.pyc
│       │   │           │   │   │   └── versionpredicate.cpython-310.pyc
│       │   │           │   │   ├── _msvccompiler.py
│       │   │           │   │   ├── archive_util.py
│       │   │           │   │   ├── bcppcompiler.py
│       │   │           │   │   ├── ccompiler.py
│       │   │           │   │   ├── cmd.py
│       │   │           │   │   ├── command
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── bdist.cpython-310.pyc
│       │   │           │   │   │   │   ├── bdist_dumb.cpython-310.pyc
│       │   │           │   │   │   │   ├── bdist_msi.cpython-310.pyc
│       │   │           │   │   │   │   ├── bdist_rpm.cpython-310.pyc
│       │   │           │   │   │   │   ├── bdist_wininst.cpython-310.pyc
│       │   │           │   │   │   │   ├── build.cpython-310.pyc
│       │   │           │   │   │   │   ├── build_clib.cpython-310.pyc
│       │   │           │   │   │   │   ├── build_ext.cpython-310.pyc
│       │   │           │   │   │   │   ├── build_py.cpython-310.pyc
│       │   │           │   │   │   │   ├── build_scripts.cpython-310.pyc
│       │   │           │   │   │   │   ├── check.cpython-310.pyc
│       │   │           │   │   │   │   ├── clean.cpython-310.pyc
│       │   │           │   │   │   │   ├── config.cpython-310.pyc
│       │   │           │   │   │   │   ├── install.cpython-310.pyc
│       │   │           │   │   │   │   ├── install_data.cpython-310.pyc
│       │   │           │   │   │   │   ├── install_egg_info.cpython-310.pyc
│       │   │           │   │   │   │   ├── install_headers.cpython-310.pyc
│       │   │           │   │   │   │   ├── install_lib.cpython-310.pyc
│       │   │           │   │   │   │   ├── install_scripts.cpython-310.pyc
│       │   │           │   │   │   │   ├── py37compat.cpython-310.pyc
│       │   │           │   │   │   │   ├── register.cpython-310.pyc
│       │   │           │   │   │   │   ├── sdist.cpython-310.pyc
│       │   │           │   │   │   │   └── upload.cpython-310.pyc
│       │   │           │   │   │   ├── bdist.py
│       │   │           │   │   │   ├── bdist_dumb.py
│       │   │           │   │   │   ├── bdist_msi.py
│       │   │           │   │   │   ├── bdist_rpm.py
│       │   │           │   │   │   ├── bdist_wininst.py
│       │   │           │   │   │   ├── build.py
│       │   │           │   │   │   ├── build_clib.py
│       │   │           │   │   │   ├── build_ext.py
│       │   │           │   │   │   ├── build_py.py
│       │   │           │   │   │   ├── build_scripts.py
│       │   │           │   │   │   ├── check.py
│       │   │           │   │   │   ├── clean.py
│       │   │           │   │   │   ├── config.py
│       │   │           │   │   │   ├── install.py
│       │   │           │   │   │   ├── install_data.py
│       │   │           │   │   │   ├── install_egg_info.py
│       │   │           │   │   │   ├── install_headers.py
│       │   │           │   │   │   ├── install_lib.py
│       │   │           │   │   │   ├── install_scripts.py
│       │   │           │   │   │   ├── py37compat.py
│       │   │           │   │   │   ├── register.py
│       │   │           │   │   │   ├── sdist.py
│       │   │           │   │   │   └── upload.py
│       │   │           │   │   ├── config.py
│       │   │           │   │   ├── core.py
│       │   │           │   │   ├── cygwinccompiler.py
│       │   │           │   │   ├── debug.py
│       │   │           │   │   ├── dep_util.py
│       │   │           │   │   ├── dir_util.py
│       │   │           │   │   ├── dist.py
│       │   │           │   │   ├── errors.py
│       │   │           │   │   ├── extension.py
│       │   │           │   │   ├── fancy_getopt.py
│       │   │           │   │   ├── file_util.py
│       │   │           │   │   ├── filelist.py
│       │   │           │   │   ├── log.py
│       │   │           │   │   ├── msvc9compiler.py
│       │   │           │   │   ├── msvccompiler.py
│       │   │           │   │   ├── py35compat.py
│       │   │           │   │   ├── py38compat.py
│       │   │           │   │   ├── spawn.py
│       │   │           │   │   ├── sysconfig.py
│       │   │           │   │   ├── text_file.py
│       │   │           │   │   ├── unixccompiler.py
│       │   │           │   │   ├── util.py
│       │   │           │   │   ├── version.py
│       │   │           │   │   └── versionpredicate.py
│       │   │           │   ├── _imp.py
│       │   │           │   ├── _vendor
│       │   │           │   │   ├── __init__.py
│       │   │           │   │   ├── __pycache__
│       │   │           │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   ├── ordered_set.cpython-310.pyc
│       │   │           │   │   │   └── pyparsing.cpython-310.pyc
│       │   │           │   │   ├── more_itertools
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── more.cpython-310.pyc
│       │   │           │   │   │   │   └── recipes.cpython-310.pyc
│       │   │           │   │   │   ├── more.py
│       │   │           │   │   │   └── recipes.py
│       │   │           │   │   ├── ordered_set.py
│       │   │           │   │   ├── packaging
│       │   │           │   │   │   ├── __about__.py
│       │   │           │   │   │   ├── __init__.py
│       │   │           │   │   │   ├── __pycache__
│       │   │           │   │   │   │   ├── __about__.cpython-310.pyc
│       │   │           │   │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   │   ├── _manylinux.cpython-310.pyc
│       │   │           │   │   │   │   ├── _musllinux.cpython-310.pyc
│       │   │           │   │   │   │   ├── _structures.cpython-310.pyc
│       │   │           │   │   │   │   ├── markers.cpython-310.pyc
│       │   │           │   │   │   │   ├── requirements.cpython-310.pyc
│       │   │           │   │   │   │   ├── specifiers.cpython-310.pyc
│       │   │           │   │   │   │   ├── tags.cpython-310.pyc
│       │   │           │   │   │   │   ├── utils.cpython-310.pyc
│       │   │           │   │   │   │   └── version.cpython-310.pyc
│       │   │           │   │   │   ├── _manylinux.py
│       │   │           │   │   │   ├── _musllinux.py
│       │   │           │   │   │   ├── _structures.py
│       │   │           │   │   │   ├── markers.py
│       │   │           │   │   │   ├── requirements.py
│       │   │           │   │   │   ├── specifiers.py
│       │   │           │   │   │   ├── tags.py
│       │   │           │   │   │   ├── utils.py
│       │   │           │   │   │   └── version.py
│       │   │           │   │   └── pyparsing.py
│       │   │           │   ├── archive_util.py
│       │   │           │   ├── build_meta.py
│       │   │           │   ├── cli-32.exe
│       │   │           │   ├── cli-64.exe
│       │   │           │   ├── cli-arm64.exe
│       │   │           │   ├── cli.exe
│       │   │           │   ├── command
│       │   │           │   │   ├── __init__.py
│       │   │           │   │   ├── __pycache__
│       │   │           │   │   │   ├── __init__.cpython-310.pyc
│       │   │           │   │   │   ├── alias.cpython-310.pyc
│       │   │           │   │   │   ├── bdist_egg.cpython-310.pyc
│       │   │           │   │   │   ├── bdist_rpm.cpython-310.pyc
│       │   │           │   │   │   ├── build_clib.cpython-310.pyc
│       │   │           │   │   │   ├── build_ext.cpython-310.pyc
│       │   │           │   │   │   ├── build_py.cpython-310.pyc
│       │   │           │   │   │   ├── develop.cpython-310.pyc
│       │   │           │   │   │   ├── dist_info.cpython-310.pyc
│       │   │           │   │   │   ├── easy_install.cpython-310.pyc
│       │   │           │   │   │   ├── egg_info.cpython-310.pyc
│       │   │           │   │   │   ├── install.cpython-310.pyc
│       │   │           │   │   │   ├── install_egg_info.cpython-310.pyc
│       │   │           │   │   │   ├── install_lib.cpython-310.pyc
│       │   │           │   │   │   ├── install_scripts.cpython-310.pyc
│       │   │           │   │   │   ├── py36compat.cpython-310.pyc
│       │   │           │   │   │   ├── register.cpython-310.pyc
│       │   │           │   │   │   ├── rotate.cpython-310.pyc
│       │   │           │   │   │   ├── saveopts.cpython-310.pyc
│       │   │           │   │   │   ├── sdist.cpython-310.pyc
│       │   │           │   │   │   ├── setopt.cpython-310.pyc
│       │   │           │   │   │   ├── test.cpython-310.pyc
│       │   │           │   │   │   ├── upload.cpython-310.pyc
│       │   │           │   │   │   └── upload_docs.cpython-310.pyc
│       │   │           │   │   ├── alias.py
│       │   │           │   │   ├── bdist_egg.py
│       │   │           │   │   ├── bdist_rpm.py
│       │   │           │   │   ├── build_clib.py
│       │   │           │   │   ├── build_ext.py
│       │   │           │   │   ├── build_py.py
│       │   │           │   │   ├── develop.py
│       │   │           │   │   ├── dist_info.py
│       │   │           │   │   ├── easy_install.py
│       │   │           │   │   ├── egg_info.py
│       │   │           │   │   ├── install.py
│       │   │           │   │   ├── install_egg_info.py
│       │   │           │   │   ├── install_lib.py
│       │   │           │   │   ├── install_scripts.py
│       │   │           │   │   ├── launcher manifest.xml
│       │   │           │   │   ├── py36compat.py
│       │   │           │   │   ├── register.py
│       │   │           │   │   ├── rotate.py
│       │   │           │   │   ├── saveopts.py
│       │   │           │   │   ├── sdist.py
│       │   │           │   │   ├── setopt.py
│       │   │           │   │   ├── test.py
│       │   │           │   │   ├── upload.py
│       │   │           │   │   └── upload_docs.py
│       │   │           │   ├── config.py
│       │   │           │   ├── dep_util.py
│       │   │           │   ├── depends.py
│       │   │           │   ├── dist.py
│       │   │           │   ├── errors.py
│       │   │           │   ├── extension.py
│       │   │           │   ├── extern
│       │   │           │   │   ├── __init__.py
│       │   │           │   │   └── __pycache__
│       │   │           │   │       └── __init__.cpython-310.pyc
│       │   │           │   ├── glob.py
│       │   │           │   ├── gui-32.exe
│       │   │           │   ├── gui-64.exe
│       │   │           │   ├── gui-arm64.exe
│       │   │           │   ├── gui.exe
│       │   │           │   ├── installer.py
│       │   │           │   ├── launch.py
│       │   │           │   ├── monkey.py
│       │   │           │   ├── msvc.py
│       │   │           │   ├── namespaces.py
│       │   │           │   ├── package_index.py
│       │   │           │   ├── py34compat.py
│       │   │           │   ├── sandbox.py
│       │   │           │   ├── script (dev).tmpl
│       │   │           │   ├── script.tmpl
│       │   │           │   ├── unicode_utils.py
│       │   │           │   ├── version.py
│       │   │           │   ├── wheel.py
│       │   │           │   └── windows_support.py
│       │   │           └── setuptools-59.6.0.dist-info
│       │   │               ├── INSTALLER
│       │   │               ├── LICENSE
│       │   │               ├── METADATA
│       │   │               ├── RECORD
│       │   │               ├── REQUESTED
│       │   │               ├── WHEEL
│       │   │               ├── entry_points.txt
│       │   │               └── top_level.txt
│       │   ├── lib64 -> lib
│       │   └── pyvenv.cfg
│       ├── module
│       │   ├── __pycache__
│       │   │   ├── vision_label.cpython-310.pyc
│       │   │   └── web_detect.cpython-310.pyc
│       │   ├── vision_label.py
│       │   └── web_detect.py
│       ├── requirements.txt
│       ├── test_main.http
│       └── venv
│           ├── Lib
│           │   └── site-packages
│           │       ├── PyYAML-6.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── __pycache__
│           │       │   ├── _virtualenv.cpython-310.pyc
│           │       │   ├── six.cpython-310.pyc
│           │       │   └── typing_extensions.cpython-310.pyc
│           │       ├── _distutils_hack
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   └── override.cpython-310.pyc
│           │       │   └── override.py
│           │       ├── _pytest
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _argcomplete.cpython-310.pyc
│           │       │   │   ├── _version.cpython-310.pyc
│           │       │   │   ├── cacheprovider.cpython-310.pyc
│           │       │   │   ├── capture.cpython-310.pyc
│           │       │   │   ├── compat.cpython-310.pyc
│           │       │   │   ├── debugging.cpython-310.pyc
│           │       │   │   ├── deprecated.cpython-310.pyc
│           │       │   │   ├── doctest.cpython-310.pyc
│           │       │   │   ├── faulthandler.cpython-310.pyc
│           │       │   │   ├── fixtures.cpython-310.pyc
│           │       │   │   ├── freeze_support.cpython-310.pyc
│           │       │   │   ├── helpconfig.cpython-310.pyc
│           │       │   │   ├── hookspec.cpython-310.pyc
│           │       │   │   ├── junitxml.cpython-310.pyc
│           │       │   │   ├── legacypath.cpython-310.pyc
│           │       │   │   ├── logging.cpython-310.pyc
│           │       │   │   ├── main.cpython-310.pyc
│           │       │   │   ├── monkeypatch.cpython-310.pyc
│           │       │   │   ├── nodes.cpython-310.pyc
│           │       │   │   ├── nose.cpython-310.pyc
│           │       │   │   ├── outcomes.cpython-310.pyc
│           │       │   │   ├── pastebin.cpython-310.pyc
│           │       │   │   ├── pathlib.cpython-310.pyc
│           │       │   │   ├── pytester.cpython-310.pyc
│           │       │   │   ├── pytester_assertions.cpython-310.pyc
│           │       │   │   ├── python.cpython-310.pyc
│           │       │   │   ├── python_api.cpython-310.pyc
│           │       │   │   ├── python_path.cpython-310.pyc
│           │       │   │   ├── recwarn.cpython-310.pyc
│           │       │   │   ├── reports.cpython-310.pyc
│           │       │   │   ├── runner.cpython-310.pyc
│           │       │   │   ├── scope.cpython-310.pyc
│           │       │   │   ├── setuponly.cpython-310.pyc
│           │       │   │   ├── setupplan.cpython-310.pyc
│           │       │   │   ├── skipping.cpython-310.pyc
│           │       │   │   ├── stash.cpython-310.pyc
│           │       │   │   ├── stepwise.cpython-310.pyc
│           │       │   │   ├── terminal.cpython-310.pyc
│           │       │   │   ├── threadexception.cpython-310.pyc
│           │       │   │   ├── timing.cpython-310.pyc
│           │       │   │   ├── tmpdir.cpython-310.pyc
│           │       │   │   ├── unittest.cpython-310.pyc
│           │       │   │   ├── unraisableexception.cpython-310.pyc
│           │       │   │   ├── warning_types.cpython-310.pyc
│           │       │   │   └── warnings.cpython-310.pyc
│           │       │   ├── _argcomplete.py
│           │       │   ├── _code
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── code.cpython-310.pyc
│           │       │   │   │   └── source.cpython-310.pyc
│           │       │   │   ├── code.py
│           │       │   │   └── source.py
│           │       │   ├── _io
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── saferepr.cpython-310.pyc
│           │       │   │   │   ├── terminalwriter.cpython-310.pyc
│           │       │   │   │   └── wcwidth.cpython-310.pyc
│           │       │   │   ├── saferepr.py
│           │       │   │   ├── terminalwriter.py
│           │       │   │   └── wcwidth.py
│           │       │   ├── _version.py
│           │       │   ├── assertion
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── rewrite.cpython-310.pyc
│           │       │   │   │   ├── truncate.cpython-310.pyc
│           │       │   │   │   └── util.cpython-310.pyc
│           │       │   │   ├── rewrite.py
│           │       │   │   ├── truncate.py
│           │       │   │   └── util.py
│           │       │   ├── cacheprovider.py
│           │       │   ├── capture.py
│           │       │   ├── compat.py
│           │       │   ├── config
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── argparsing.cpython-310.pyc
│           │       │   │   │   ├── compat.cpython-310.pyc
│           │       │   │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   │   └── findpaths.cpython-310.pyc
│           │       │   │   ├── argparsing.py
│           │       │   │   ├── compat.py
│           │       │   │   ├── exceptions.py
│           │       │   │   └── findpaths.py
│           │       │   ├── debugging.py
│           │       │   ├── deprecated.py
│           │       │   ├── doctest.py
│           │       │   ├── faulthandler.py
│           │       │   ├── fixtures.py
│           │       │   ├── freeze_support.py
│           │       │   ├── helpconfig.py
│           │       │   ├── hookspec.py
│           │       │   ├── junitxml.py
│           │       │   ├── legacypath.py
│           │       │   ├── logging.py
│           │       │   ├── main.py
│           │       │   ├── mark
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── expression.cpython-310.pyc
│           │       │   │   │   └── structures.cpython-310.pyc
│           │       │   │   ├── expression.py
│           │       │   │   └── structures.py
│           │       │   ├── monkeypatch.py
│           │       │   ├── nodes.py
│           │       │   ├── nose.py
│           │       │   ├── outcomes.py
│           │       │   ├── pastebin.py
│           │       │   ├── pathlib.py
│           │       │   ├── py.typed
│           │       │   ├── pytester.py
│           │       │   ├── pytester_assertions.py
│           │       │   ├── python.py
│           │       │   ├── python_api.py
│           │       │   ├── python_path.py
│           │       │   ├── recwarn.py
│           │       │   ├── reports.py
│           │       │   ├── runner.py
│           │       │   ├── scope.py
│           │       │   ├── setuponly.py
│           │       │   ├── setupplan.py
│           │       │   ├── skipping.py
│           │       │   ├── stash.py
│           │       │   ├── stepwise.py
│           │       │   ├── terminal.py
│           │       │   ├── threadexception.py
│           │       │   ├── timing.py
│           │       │   ├── tmpdir.py
│           │       │   ├── unittest.py
│           │       │   ├── unraisableexception.py
│           │       │   ├── warning_types.py
│           │       │   └── warnings.py
│           │       ├── _virtualenv.pth
│           │       ├── _virtualenv.py
│           │       ├── _yaml
│           │       │   ├── __init__.py
│           │       │   └── __pycache__
│           │       │       └── __init__.cpython-310.pyc
│           │       ├── anyio
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── from_thread.cpython-310.pyc
│           │       │   │   ├── lowlevel.cpython-310.pyc
│           │       │   │   ├── pytest_plugin.cpython-310.pyc
│           │       │   │   ├── to_process.cpython-310.pyc
│           │       │   │   └── to_thread.cpython-310.pyc
│           │       │   ├── _backends
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── _asyncio.cpython-310.pyc
│           │       │   │   │   └── _trio.cpython-310.pyc
│           │       │   │   ├── _asyncio.py
│           │       │   │   └── _trio.py
│           │       │   ├── _core
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── _compat.cpython-310.pyc
│           │       │   │   │   ├── _eventloop.cpython-310.pyc
│           │       │   │   │   ├── _exceptions.cpython-310.pyc
│           │       │   │   │   ├── _fileio.cpython-310.pyc
│           │       │   │   │   ├── _resources.cpython-310.pyc
│           │       │   │   │   ├── _signals.cpython-310.pyc
│           │       │   │   │   ├── _sockets.cpython-310.pyc
│           │       │   │   │   ├── _streams.cpython-310.pyc
│           │       │   │   │   ├── _subprocesses.cpython-310.pyc
│           │       │   │   │   ├── _synchronization.cpython-310.pyc
│           │       │   │   │   ├── _tasks.cpython-310.pyc
│           │       │   │   │   ├── _testing.cpython-310.pyc
│           │       │   │   │   └── _typedattr.cpython-310.pyc
│           │       │   │   ├── _compat.py
│           │       │   │   ├── _eventloop.py
│           │       │   │   ├── _exceptions.py
│           │       │   │   ├── _fileio.py
│           │       │   │   ├── _resources.py
│           │       │   │   ├── _signals.py
│           │       │   │   ├── _sockets.py
│           │       │   │   ├── _streams.py
│           │       │   │   ├── _subprocesses.py
│           │       │   │   ├── _synchronization.py
│           │       │   │   ├── _tasks.py
│           │       │   │   ├── _testing.py
│           │       │   │   └── _typedattr.py
│           │       │   ├── abc
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── _resources.cpython-310.pyc
│           │       │   │   │   ├── _sockets.cpython-310.pyc
│           │       │   │   │   ├── _streams.cpython-310.pyc
│           │       │   │   │   ├── _subprocesses.cpython-310.pyc
│           │       │   │   │   ├── _tasks.cpython-310.pyc
│           │       │   │   │   └── _testing.cpython-310.pyc
│           │       │   │   ├── _resources.py
│           │       │   │   ├── _sockets.py
│           │       │   │   ├── _streams.py
│           │       │   │   ├── _subprocesses.py
│           │       │   │   ├── _tasks.py
│           │       │   │   └── _testing.py
│           │       │   ├── from_thread.py
│           │       │   ├── lowlevel.py
│           │       │   ├── py.typed
│           │       │   ├── pytest_plugin.py
│           │       │   ├── streams
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── buffered.cpython-310.pyc
│           │       │   │   │   ├── file.cpython-310.pyc
│           │       │   │   │   ├── memory.cpython-310.pyc
│           │       │   │   │   ├── stapled.cpython-310.pyc
│           │       │   │   │   ├── text.cpython-310.pyc
│           │       │   │   │   └── tls.cpython-310.pyc
│           │       │   │   ├── buffered.py
│           │       │   │   ├── file.py
│           │       │   │   ├── memory.py
│           │       │   │   ├── stapled.py
│           │       │   │   ├── text.py
│           │       │   │   └── tls.py
│           │       │   ├── to_process.py
│           │       │   └── to_thread.py
│           │       ├── anyio-3.6.1.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   ├── entry_points.txt
│           │       │   └── top_level.txt
│           │       ├── attr
│           │       │   ├── __init__.py
│           │       │   ├── __init__.pyi
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _cmp.cpython-310.pyc
│           │       │   │   ├── _compat.cpython-310.pyc
│           │       │   │   ├── _config.cpython-310.pyc
│           │       │   │   ├── _funcs.cpython-310.pyc
│           │       │   │   ├── _make.cpython-310.pyc
│           │       │   │   ├── _next_gen.cpython-310.pyc
│           │       │   │   ├── _version_info.cpython-310.pyc
│           │       │   │   ├── converters.cpython-310.pyc
│           │       │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   ├── filters.cpython-310.pyc
│           │       │   │   ├── setters.cpython-310.pyc
│           │       │   │   └── validators.cpython-310.pyc
│           │       │   ├── _cmp.py
│           │       │   ├── _cmp.pyi
│           │       │   ├── _compat.py
│           │       │   ├── _config.py
│           │       │   ├── _funcs.py
│           │       │   ├── _make.py
│           │       │   ├── _next_gen.py
│           │       │   ├── _version_info.py
│           │       │   ├── _version_info.pyi
│           │       │   ├── converters.py
│           │       │   ├── converters.pyi
│           │       │   ├── exceptions.py
│           │       │   ├── exceptions.pyi
│           │       │   ├── filters.py
│           │       │   ├── filters.pyi
│           │       │   ├── py.typed
│           │       │   ├── setters.py
│           │       │   ├── setters.pyi
│           │       │   ├── validators.py
│           │       │   └── validators.pyi
│           │       ├── attrs
│           │       │   ├── __init__.py
│           │       │   ├── __init__.pyi
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── converters.cpython-310.pyc
│           │       │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   ├── filters.cpython-310.pyc
│           │       │   │   ├── setters.cpython-310.pyc
│           │       │   │   └── validators.cpython-310.pyc
│           │       │   ├── converters.py
│           │       │   ├── exceptions.py
│           │       │   ├── filters.py
│           │       │   ├── py.typed
│           │       │   ├── setters.py
│           │       │   └── validators.py
│           │       ├── attrs-22.1.0.dist-info
│           │       │   ├── AUTHORS.rst
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── cachetools
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── func.cpython-310.pyc
│           │       │   │   └── keys.cpython-310.pyc
│           │       │   ├── func.py
│           │       │   └── keys.py
│           │       ├── cachetools-5.2.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── certifi
│           │       │   ├── __init__.py
│           │       │   ├── __main__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── __main__.cpython-310.pyc
│           │       │   │   └── core.cpython-310.pyc
│           │       │   ├── cacert.pem
│           │       │   ├── core.py
│           │       │   └── py.typed
│           │       ├── certifi-2022.9.24.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── chardet
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── big5freq.cpython-310.pyc
│           │       │   │   ├── big5prober.cpython-310.pyc
│           │       │   │   ├── chardistribution.cpython-310.pyc
│           │       │   │   ├── charsetgroupprober.cpython-310.pyc
│           │       │   │   ├── charsetprober.cpython-310.pyc
│           │       │   │   ├── codingstatemachine.cpython-310.pyc
│           │       │   │   ├── compat.cpython-310.pyc
│           │       │   │   ├── cp949prober.cpython-310.pyc
│           │       │   │   ├── enums.cpython-310.pyc
│           │       │   │   ├── escprober.cpython-310.pyc
│           │       │   │   ├── escsm.cpython-310.pyc
│           │       │   │   ├── eucjpprober.cpython-310.pyc
│           │       │   │   ├── euckrfreq.cpython-310.pyc
│           │       │   │   ├── euckrprober.cpython-310.pyc
│           │       │   │   ├── euctwfreq.cpython-310.pyc
│           │       │   │   ├── euctwprober.cpython-310.pyc
│           │       │   │   ├── gb2312freq.cpython-310.pyc
│           │       │   │   ├── gb2312prober.cpython-310.pyc
│           │       │   │   ├── hebrewprober.cpython-310.pyc
│           │       │   │   ├── jisfreq.cpython-310.pyc
│           │       │   │   ├── jpcntx.cpython-310.pyc
│           │       │   │   ├── langbulgarianmodel.cpython-310.pyc
│           │       │   │   ├── langcyrillicmodel.cpython-310.pyc
│           │       │   │   ├── langgreekmodel.cpython-310.pyc
│           │       │   │   ├── langhebrewmodel.cpython-310.pyc
│           │       │   │   ├── langhungarianmodel.cpython-310.pyc
│           │       │   │   ├── langthaimodel.cpython-310.pyc
│           │       │   │   ├── langturkishmodel.cpython-310.pyc
│           │       │   │   ├── latin1prober.cpython-310.pyc
│           │       │   │   ├── mbcharsetprober.cpython-310.pyc
│           │       │   │   ├── mbcsgroupprober.cpython-310.pyc
│           │       │   │   ├── mbcssm.cpython-310.pyc
│           │       │   │   ├── sbcharsetprober.cpython-310.pyc
│           │       │   │   ├── sbcsgroupprober.cpython-310.pyc
│           │       │   │   ├── sjisprober.cpython-310.pyc
│           │       │   │   ├── universaldetector.cpython-310.pyc
│           │       │   │   ├── utf8prober.cpython-310.pyc
│           │       │   │   └── version.cpython-310.pyc
│           │       │   ├── big5freq.py
│           │       │   ├── big5prober.py
│           │       │   ├── chardistribution.py
│           │       │   ├── charsetgroupprober.py
│           │       │   ├── charsetprober.py
│           │       │   ├── cli
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   └── chardetect.cpython-310.pyc
│           │       │   │   └── chardetect.py
│           │       │   ├── codingstatemachine.py
│           │       │   ├── compat.py
│           │       │   ├── cp949prober.py
│           │       │   ├── enums.py
│           │       │   ├── escprober.py
│           │       │   ├── escsm.py
│           │       │   ├── eucjpprober.py
│           │       │   ├── euckrfreq.py
│           │       │   ├── euckrprober.py
│           │       │   ├── euctwfreq.py
│           │       │   ├── euctwprober.py
│           │       │   ├── gb2312freq.py
│           │       │   ├── gb2312prober.py
│           │       │   ├── hebrewprober.py
│           │       │   ├── jisfreq.py
│           │       │   ├── jpcntx.py
│           │       │   ├── langbulgarianmodel.py
│           │       │   ├── langcyrillicmodel.py
│           │       │   ├── langgreekmodel.py
│           │       │   ├── langhebrewmodel.py
│           │       │   ├── langhungarianmodel.py
│           │       │   ├── langthaimodel.py
│           │       │   ├── langturkishmodel.py
│           │       │   ├── latin1prober.py
│           │       │   ├── mbcharsetprober.py
│           │       │   ├── mbcsgroupprober.py
│           │       │   ├── mbcssm.py
│           │       │   ├── sbcharsetprober.py
│           │       │   ├── sbcsgroupprober.py
│           │       │   ├── sjisprober.py
│           │       │   ├── universaldetector.py
│           │       │   ├── utf8prober.py
│           │       │   └── version.py
│           │       ├── chardet-3.0.4.dist-info
│           │       │   ├── DESCRIPTION.rst
│           │       │   ├── INSTALLER
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   ├── entry_points.txt
│           │       │   ├── metadata.json
│           │       │   └── top_level.txt
│           │       ├── charset_normalizer
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── api.cpython-310.pyc
│           │       │   │   ├── cd.cpython-310.pyc
│           │       │   │   ├── constant.cpython-310.pyc
│           │       │   │   ├── legacy.cpython-310.pyc
│           │       │   │   ├── md.cpython-310.pyc
│           │       │   │   ├── models.cpython-310.pyc
│           │       │   │   ├── utils.cpython-310.pyc
│           │       │   │   └── version.cpython-310.pyc
│           │       │   ├── api.py
│           │       │   ├── assets
│           │       │   │   ├── __init__.py
│           │       │   │   └── __pycache__
│           │       │   │       └── __init__.cpython-310.pyc
│           │       │   ├── cd.py
│           │       │   ├── cli
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   └── normalizer.cpython-310.pyc
│           │       │   │   └── normalizer.py
│           │       │   ├── constant.py
│           │       │   ├── legacy.py
│           │       │   ├── md.py
│           │       │   ├── models.py
│           │       │   ├── py.typed
│           │       │   ├── utils.py
│           │       │   └── version.py
│           │       ├── charset_normalizer-2.1.1.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   ├── entry_points.txt
│           │       │   └── top_level.txt
│           │       ├── click
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _compat.cpython-310.pyc
│           │       │   │   ├── _termui_impl.cpython-310.pyc
│           │       │   │   ├── _textwrap.cpython-310.pyc
│           │       │   │   ├── _winconsole.cpython-310.pyc
│           │       │   │   ├── core.cpython-310.pyc
│           │       │   │   ├── decorators.cpython-310.pyc
│           │       │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   ├── formatting.cpython-310.pyc
│           │       │   │   ├── globals.cpython-310.pyc
│           │       │   │   ├── parser.cpython-310.pyc
│           │       │   │   ├── shell_completion.cpython-310.pyc
│           │       │   │   ├── termui.cpython-310.pyc
│           │       │   │   ├── testing.cpython-310.pyc
│           │       │   │   ├── types.cpython-310.pyc
│           │       │   │   └── utils.cpython-310.pyc
│           │       │   ├── _compat.py
│           │       │   ├── _termui_impl.py
│           │       │   ├── _textwrap.py
│           │       │   ├── _winconsole.py
│           │       │   ├── core.py
│           │       │   ├── decorators.py
│           │       │   ├── exceptions.py
│           │       │   ├── formatting.py
│           │       │   ├── globals.py
│           │       │   ├── parser.py
│           │       │   ├── py.typed
│           │       │   ├── shell_completion.py
│           │       │   ├── termui.py
│           │       │   ├── testing.py
│           │       │   ├── types.py
│           │       │   └── utils.py
│           │       ├── click-8.1.3.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE.rst
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── colorama
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── ansi.cpython-310.pyc
│           │       │   │   ├── ansitowin32.cpython-310.pyc
│           │       │   │   ├── initialise.cpython-310.pyc
│           │       │   │   ├── win32.cpython-310.pyc
│           │       │   │   └── winterm.cpython-310.pyc
│           │       │   ├── ansi.py
│           │       │   ├── ansitowin32.py
│           │       │   ├── initialise.py
│           │       │   ├── win32.py
│           │       │   └── winterm.py
│           │       ├── colorama-0.4.5.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE.txt
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── distutils-precedence.pth
│           │       ├── dotenv
│           │       │   ├── __init__.py
│           │       │   ├── __main__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── __main__.cpython-310.pyc
│           │       │   │   ├── cli.cpython-310.pyc
│           │       │   │   ├── ipython.cpython-310.pyc
│           │       │   │   ├── main.cpython-310.pyc
│           │       │   │   ├── parser.cpython-310.pyc
│           │       │   │   ├── variables.cpython-310.pyc
│           │       │   │   └── version.cpython-310.pyc
│           │       │   ├── cli.py
│           │       │   ├── ipython.py
│           │       │   ├── main.py
│           │       │   ├── parser.py
│           │       │   ├── py.typed
│           │       │   ├── variables.py
│           │       │   └── version.py
│           │       ├── fastapi
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── applications.cpython-310.pyc
│           │       │   │   ├── background.cpython-310.pyc
│           │       │   │   ├── concurrency.cpython-310.pyc
│           │       │   │   ├── datastructures.cpython-310.pyc
│           │       │   │   ├── encoders.cpython-310.pyc
│           │       │   │   ├── exception_handlers.cpython-310.pyc
│           │       │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   ├── logger.cpython-310.pyc
│           │       │   │   ├── param_functions.cpython-310.pyc
│           │       │   │   ├── params.cpython-310.pyc
│           │       │   │   ├── requests.cpython-310.pyc
│           │       │   │   ├── responses.cpython-310.pyc
│           │       │   │   ├── routing.cpython-310.pyc
│           │       │   │   ├── staticfiles.cpython-310.pyc
│           │       │   │   ├── templating.cpython-310.pyc
│           │       │   │   ├── testclient.cpython-310.pyc
│           │       │   │   ├── types.cpython-310.pyc
│           │       │   │   ├── utils.cpython-310.pyc
│           │       │   │   └── websockets.cpython-310.pyc
│           │       │   ├── applications.py
│           │       │   ├── background.py
│           │       │   ├── concurrency.py
│           │       │   ├── datastructures.py
│           │       │   ├── dependencies
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── models.cpython-310.pyc
│           │       │   │   │   └── utils.cpython-310.pyc
│           │       │   │   ├── models.py
│           │       │   │   └── utils.py
│           │       │   ├── encoders.py
│           │       │   ├── exception_handlers.py
│           │       │   ├── exceptions.py
│           │       │   ├── logger.py
│           │       │   ├── middleware
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── asyncexitstack.cpython-310.pyc
│           │       │   │   │   ├── cors.cpython-310.pyc
│           │       │   │   │   ├── gzip.cpython-310.pyc
│           │       │   │   │   ├── httpsredirect.cpython-310.pyc
│           │       │   │   │   ├── trustedhost.cpython-310.pyc
│           │       │   │   │   └── wsgi.cpython-310.pyc
│           │       │   │   ├── asyncexitstack.py
│           │       │   │   ├── cors.py
│           │       │   │   ├── gzip.py
│           │       │   │   ├── httpsredirect.py
│           │       │   │   ├── trustedhost.py
│           │       │   │   └── wsgi.py
│           │       │   ├── openapi
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── constants.cpython-310.pyc
│           │       │   │   │   ├── docs.cpython-310.pyc
│           │       │   │   │   ├── models.cpython-310.pyc
│           │       │   │   │   └── utils.cpython-310.pyc
│           │       │   │   ├── constants.py
│           │       │   │   ├── docs.py
│           │       │   │   ├── models.py
│           │       │   │   └── utils.py
│           │       │   ├── param_functions.py
│           │       │   ├── params.py
│           │       │   ├── py.typed
│           │       │   ├── requests.py
│           │       │   ├── responses.py
│           │       │   ├── routing.py
│           │       │   ├── security
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── api_key.cpython-310.pyc
│           │       │   │   │   ├── base.cpython-310.pyc
│           │       │   │   │   ├── http.cpython-310.pyc
│           │       │   │   │   ├── oauth2.cpython-310.pyc
│           │       │   │   │   ├── open_id_connect_url.cpython-310.pyc
│           │       │   │   │   └── utils.cpython-310.pyc
│           │       │   │   ├── api_key.py
│           │       │   │   ├── base.py
│           │       │   │   ├── http.py
│           │       │   │   ├── oauth2.py
│           │       │   │   ├── open_id_connect_url.py
│           │       │   │   └── utils.py
│           │       │   ├── staticfiles.py
│           │       │   ├── templating.py
│           │       │   ├── testclient.py
│           │       │   ├── types.py
│           │       │   ├── utils.py
│           │       │   └── websockets.py
│           │       ├── fastapi-0.85.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   └── licenses
│           │       │       └── LICENSE
│           │       ├── google
│           │       │   ├── _upb
│           │       │   │   └── _message.pyd
│           │       │   ├── api
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── annotations_pb2.cpython-310.pyc
│           │       │   │   │   ├── auth_pb2.cpython-310.pyc
│           │       │   │   │   ├── backend_pb2.cpython-310.pyc
│           │       │   │   │   ├── billing_pb2.cpython-310.pyc
│           │       │   │   │   ├── client_pb2.cpython-310.pyc
│           │       │   │   │   ├── config_change_pb2.cpython-310.pyc
│           │       │   │   │   ├── consumer_pb2.cpython-310.pyc
│           │       │   │   │   ├── context_pb2.cpython-310.pyc
│           │       │   │   │   ├── control_pb2.cpython-310.pyc
│           │       │   │   │   ├── distribution_pb2.cpython-310.pyc
│           │       │   │   │   ├── documentation_pb2.cpython-310.pyc
│           │       │   │   │   ├── endpoint_pb2.cpython-310.pyc
│           │       │   │   │   ├── error_reason_pb2.cpython-310.pyc
│           │       │   │   │   ├── field_behavior_pb2.cpython-310.pyc
│           │       │   │   │   ├── http_pb2.cpython-310.pyc
│           │       │   │   │   ├── httpbody_pb2.cpython-310.pyc
│           │       │   │   │   ├── label_pb2.cpython-310.pyc
│           │       │   │   │   ├── launch_stage_pb2.cpython-310.pyc
│           │       │   │   │   ├── log_pb2.cpython-310.pyc
│           │       │   │   │   ├── logging_pb2.cpython-310.pyc
│           │       │   │   │   ├── metric_pb2.cpython-310.pyc
│           │       │   │   │   ├── monitored_resource_pb2.cpython-310.pyc
│           │       │   │   │   ├── monitoring_pb2.cpython-310.pyc
│           │       │   │   │   ├── quota_pb2.cpython-310.pyc
│           │       │   │   │   ├── resource_pb2.cpython-310.pyc
│           │       │   │   │   ├── routing_pb2.cpython-310.pyc
│           │       │   │   │   ├── service_pb2.cpython-310.pyc
│           │       │   │   │   ├── source_info_pb2.cpython-310.pyc
│           │       │   │   │   ├── system_parameter_pb2.cpython-310.pyc
│           │       │   │   │   ├── usage_pb2.cpython-310.pyc
│           │       │   │   │   └── visibility_pb2.cpython-310.pyc
│           │       │   │   ├── annotations.proto
│           │       │   │   ├── annotations_pb2.py
│           │       │   │   ├── auth.proto
│           │       │   │   ├── auth_pb2.py
│           │       │   │   ├── backend.proto
│           │       │   │   ├── backend_pb2.py
│           │       │   │   ├── billing.proto
│           │       │   │   ├── billing_pb2.py
│           │       │   │   ├── client.proto
│           │       │   │   ├── client_pb2.py
│           │       │   │   ├── config_change.proto
│           │       │   │   ├── config_change_pb2.py
│           │       │   │   ├── consumer.proto
│           │       │   │   ├── consumer_pb2.py
│           │       │   │   ├── context.proto
│           │       │   │   ├── context_pb2.py
│           │       │   │   ├── control.proto
│           │       │   │   ├── control_pb2.py
│           │       │   │   ├── distribution.proto
│           │       │   │   ├── distribution_pb2.py
│           │       │   │   ├── documentation.proto
│           │       │   │   ├── documentation_pb2.py
│           │       │   │   ├── endpoint.proto
│           │       │   │   ├── endpoint_pb2.py
│           │       │   │   ├── error_reason.proto
│           │       │   │   ├── error_reason_pb2.py
│           │       │   │   ├── field_behavior.proto
│           │       │   │   ├── field_behavior_pb2.py
│           │       │   │   ├── http.proto
│           │       │   │   ├── http_pb2.py
│           │       │   │   ├── httpbody.proto
│           │       │   │   ├── httpbody_pb2.py
│           │       │   │   ├── label.proto
│           │       │   │   ├── label_pb2.py
│           │       │   │   ├── launch_stage.proto
│           │       │   │   ├── launch_stage_pb2.py
│           │       │   │   ├── log.proto
│           │       │   │   ├── log_pb2.py
│           │       │   │   ├── logging.proto
│           │       │   │   ├── logging_pb2.py
│           │       │   │   ├── metric.proto
│           │       │   │   ├── metric_pb2.py
│           │       │   │   ├── monitored_resource.proto
│           │       │   │   ├── monitored_resource_pb2.py
│           │       │   │   ├── monitoring.proto
│           │       │   │   ├── monitoring_pb2.py
│           │       │   │   ├── quota.proto
│           │       │   │   ├── quota_pb2.py
│           │       │   │   ├── resource.proto
│           │       │   │   ├── resource_pb2.py
│           │       │   │   ├── routing.proto
│           │       │   │   ├── routing_pb2.py
│           │       │   │   ├── service.proto
│           │       │   │   ├── service_pb2.py
│           │       │   │   ├── source_info.proto
│           │       │   │   ├── source_info_pb2.py
│           │       │   │   ├── system_parameter.proto
│           │       │   │   ├── system_parameter_pb2.py
│           │       │   │   ├── usage.proto
│           │       │   │   ├── usage_pb2.py
│           │       │   │   ├── visibility.proto
│           │       │   │   └── visibility_pb2.py
│           │       │   ├── api_core
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── bidi.cpython-310.pyc
│           │       │   │   │   ├── client_info.cpython-310.pyc
│           │       │   │   │   ├── client_options.cpython-310.pyc
│           │       │   │   │   ├── datetime_helpers.cpython-310.pyc
│           │       │   │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   │   ├── extended_operation.cpython-310.pyc
│           │       │   │   │   ├── general_helpers.cpython-310.pyc
│           │       │   │   │   ├── grpc_helpers.cpython-310.pyc
│           │       │   │   │   ├── grpc_helpers_async.cpython-310.pyc
│           │       │   │   │   ├── iam.cpython-310.pyc
│           │       │   │   │   ├── operation.cpython-310.pyc
│           │       │   │   │   ├── operation_async.cpython-310.pyc
│           │       │   │   │   ├── page_iterator.cpython-310.pyc
│           │       │   │   │   ├── page_iterator_async.cpython-310.pyc
│           │       │   │   │   ├── path_template.cpython-310.pyc
│           │       │   │   │   ├── protobuf_helpers.cpython-310.pyc
│           │       │   │   │   ├── rest_helpers.cpython-310.pyc
│           │       │   │   │   ├── rest_streaming.cpython-310.pyc
│           │       │   │   │   ├── retry.cpython-310.pyc
│           │       │   │   │   ├── retry_async.cpython-310.pyc
│           │       │   │   │   ├── timeout.cpython-310.pyc
│           │       │   │   │   └── version.cpython-310.pyc
│           │       │   │   ├── bidi.py
│           │       │   │   ├── client_info.py
│           │       │   │   ├── client_options.py
│           │       │   │   ├── datetime_helpers.py
│           │       │   │   ├── exceptions.py
│           │       │   │   ├── extended_operation.py
│           │       │   │   ├── future
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── _helpers.cpython-310.pyc
│           │       │   │   │   │   ├── async_future.cpython-310.pyc
│           │       │   │   │   │   ├── base.cpython-310.pyc
│           │       │   │   │   │   └── polling.cpython-310.pyc
│           │       │   │   │   ├── _helpers.py
│           │       │   │   │   ├── async_future.py
│           │       │   │   │   ├── base.py
│           │       │   │   │   └── polling.py
│           │       │   │   ├── gapic_v1
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── client_info.cpython-310.pyc
│           │       │   │   │   │   ├── config.cpython-310.pyc
│           │       │   │   │   │   ├── config_async.cpython-310.pyc
│           │       │   │   │   │   ├── method.cpython-310.pyc
│           │       │   │   │   │   ├── method_async.cpython-310.pyc
│           │       │   │   │   │   └── routing_header.cpython-310.pyc
│           │       │   │   │   ├── client_info.py
│           │       │   │   │   ├── config.py
│           │       │   │   │   ├── config_async.py
│           │       │   │   │   ├── method.py
│           │       │   │   │   ├── method_async.py
│           │       │   │   │   └── routing_header.py
│           │       │   │   ├── general_helpers.py
│           │       │   │   ├── grpc_helpers.py
│           │       │   │   ├── grpc_helpers_async.py
│           │       │   │   ├── iam.py
│           │       │   │   ├── operation.py
│           │       │   │   ├── operation_async.py
│           │       │   │   ├── operations_v1
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── abstract_operations_client.cpython-310.pyc
│           │       │   │   │   │   ├── operations_async_client.cpython-310.pyc
│           │       │   │   │   │   ├── operations_client.cpython-310.pyc
│           │       │   │   │   │   ├── operations_client_config.cpython-310.pyc
│           │       │   │   │   │   └── pagers.cpython-310.pyc
│           │       │   │   │   ├── abstract_operations_client.py
│           │       │   │   │   ├── operations_async_client.py
│           │       │   │   │   ├── operations_client.py
│           │       │   │   │   ├── operations_client_config.py
│           │       │   │   │   ├── pagers.py
│           │       │   │   │   └── transports
│           │       │   │   │       ├── __init__.py
│           │       │   │   │       ├── __pycache__
│           │       │   │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │   │       │   ├── base.cpython-310.pyc
│           │       │   │   │       │   └── rest.cpython-310.pyc
│           │       │   │   │       ├── base.py
│           │       │   │   │       └── rest.py
│           │       │   │   ├── page_iterator.py
│           │       │   │   ├── page_iterator_async.py
│           │       │   │   ├── path_template.py
│           │       │   │   ├── protobuf_helpers.py
│           │       │   │   ├── py.typed
│           │       │   │   ├── rest_helpers.py
│           │       │   │   ├── rest_streaming.py
│           │       │   │   ├── retry.py
│           │       │   │   ├── retry_async.py
│           │       │   │   ├── timeout.py
│           │       │   │   └── version.py
│           │       │   ├── auth
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── _cloud_sdk.cpython-310.pyc
│           │       │   │   │   ├── _credentials_async.cpython-310.pyc
│           │       │   │   │   ├── _default.cpython-310.pyc
│           │       │   │   │   ├── _default_async.cpython-310.pyc
│           │       │   │   │   ├── _helpers.cpython-310.pyc
│           │       │   │   │   ├── _jwt_async.cpython-310.pyc
│           │       │   │   │   ├── _oauth2client.cpython-310.pyc
│           │       │   │   │   ├── _service_account_info.cpython-310.pyc
│           │       │   │   │   ├── app_engine.cpython-310.pyc
│           │       │   │   │   ├── aws.cpython-310.pyc
│           │       │   │   │   ├── credentials.cpython-310.pyc
│           │       │   │   │   ├── downscoped.cpython-310.pyc
│           │       │   │   │   ├── environment_vars.cpython-310.pyc
│           │       │   │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   │   ├── external_account.cpython-310.pyc
│           │       │   │   │   ├── iam.cpython-310.pyc
│           │       │   │   │   ├── identity_pool.cpython-310.pyc
│           │       │   │   │   ├── impersonated_credentials.cpython-310.pyc
│           │       │   │   │   ├── jwt.cpython-310.pyc
│           │       │   │   │   ├── pluggable.cpython-310.pyc
│           │       │   │   │   └── version.cpython-310.pyc
│           │       │   │   ├── _cloud_sdk.py
│           │       │   │   ├── _credentials_async.py
│           │       │   │   ├── _default.py
│           │       │   │   ├── _default_async.py
│           │       │   │   ├── _helpers.py
│           │       │   │   ├── _jwt_async.py
│           │       │   │   ├── _oauth2client.py
│           │       │   │   ├── _service_account_info.py
│           │       │   │   ├── app_engine.py
│           │       │   │   ├── aws.py
│           │       │   │   ├── compute_engine
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── _metadata.cpython-310.pyc
│           │       │   │   │   │   └── credentials.cpython-310.pyc
│           │       │   │   │   ├── _metadata.py
│           │       │   │   │   └── credentials.py
│           │       │   │   ├── credentials.py
│           │       │   │   ├── crypt
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── _cryptography_rsa.cpython-310.pyc
│           │       │   │   │   │   ├── _helpers.cpython-310.pyc
│           │       │   │   │   │   ├── _python_rsa.cpython-310.pyc
│           │       │   │   │   │   ├── base.cpython-310.pyc
│           │       │   │   │   │   ├── es256.cpython-310.pyc
│           │       │   │   │   │   └── rsa.cpython-310.pyc
│           │       │   │   │   ├── _cryptography_rsa.py
│           │       │   │   │   ├── _helpers.py
│           │       │   │   │   ├── _python_rsa.py
│           │       │   │   │   ├── base.py
│           │       │   │   │   ├── es256.py
│           │       │   │   │   └── rsa.py
│           │       │   │   ├── downscoped.py
│           │       │   │   ├── environment_vars.py
│           │       │   │   ├── exceptions.py
│           │       │   │   ├── external_account.py
│           │       │   │   ├── iam.py
│           │       │   │   ├── identity_pool.py
│           │       │   │   ├── impersonated_credentials.py
│           │       │   │   ├── jwt.py
│           │       │   │   ├── pluggable.py
│           │       │   │   ├── transport
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── _aiohttp_requests.cpython-310.pyc
│           │       │   │   │   │   ├── _custom_tls_signer.cpython-310.pyc
│           │       │   │   │   │   ├── _http_client.cpython-310.pyc
│           │       │   │   │   │   ├── _mtls_helper.cpython-310.pyc
│           │       │   │   │   │   ├── grpc.cpython-310.pyc
│           │       │   │   │   │   ├── mtls.cpython-310.pyc
│           │       │   │   │   │   ├── requests.cpython-310.pyc
│           │       │   │   │   │   └── urllib3.cpython-310.pyc
│           │       │   │   │   ├── _aiohttp_requests.py
│           │       │   │   │   ├── _custom_tls_signer.py
│           │       │   │   │   ├── _http_client.py
│           │       │   │   │   ├── _mtls_helper.py
│           │       │   │   │   ├── grpc.py
│           │       │   │   │   ├── mtls.py
│           │       │   │   │   ├── requests.py
│           │       │   │   │   └── urllib3.py
│           │       │   │   └── version.py
│           │       │   ├── cloud
│           │       │   │   ├── __pycache__
│           │       │   │   │   └── extended_operations_pb2.cpython-310.pyc
│           │       │   │   ├── extended_operations.proto
│           │       │   │   ├── extended_operations_pb2.py
│           │       │   │   ├── location
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   └── locations_pb2.cpython-310.pyc
│           │       │   │   │   ├── locations.proto
│           │       │   │   │   └── locations_pb2.py
│           │       │   │   ├── vision
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   └── __init__.cpython-310.pyc
│           │       │   │   │   └── py.typed
│           │       │   │   ├── vision_helpers
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   └── decorators.cpython-310.pyc
│           │       │   │   │   └── decorators.py
│           │       │   │   ├── vision_v1
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   └── __init__.cpython-310.pyc
│           │       │   │   │   ├── py.typed
│           │       │   │   │   ├── services
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   ├── __pycache__
│           │       │   │   │   │   │   └── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── image_annotator
│           │       │   │   │   │   │   ├── __init__.py
│           │       │   │   │   │   │   ├── __pycache__
│           │       │   │   │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   │   │   ├── async_client.cpython-310.pyc
│           │       │   │   │   │   │   │   └── client.cpython-310.pyc
│           │       │   │   │   │   │   ├── async_client.py
│           │       │   │   │   │   │   ├── client.py
│           │       │   │   │   │   │   └── transports
│           │       │   │   │   │   │       ├── __init__.py
│           │       │   │   │   │   │       ├── __pycache__
│           │       │   │   │   │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   │       │   ├── base.cpython-310.pyc
│           │       │   │   │   │   │       │   ├── grpc.cpython-310.pyc
│           │       │   │   │   │   │       │   └── grpc_asyncio.cpython-310.pyc
│           │       │   │   │   │   │       ├── base.py
│           │       │   │   │   │   │       ├── grpc.py
│           │       │   │   │   │   │       └── grpc_asyncio.py
│           │       │   │   │   │   └── product_search
│           │       │   │   │   │       ├── __init__.py
│           │       │   │   │   │       ├── __pycache__
│           │       │   │   │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │       │   ├── async_client.cpython-310.pyc
│           │       │   │   │   │       │   ├── client.cpython-310.pyc
│           │       │   │   │   │       │   └── pagers.cpython-310.pyc
│           │       │   │   │   │       ├── async_client.py
│           │       │   │   │   │       ├── client.py
│           │       │   │   │   │       ├── pagers.py
│           │       │   │   │   │       └── transports
│           │       │   │   │   │           ├── __init__.py
│           │       │   │   │   │           ├── __pycache__
│           │       │   │   │   │           │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │           │   ├── base.cpython-310.pyc
│           │       │   │   │   │           │   ├── grpc.cpython-310.pyc
│           │       │   │   │   │           │   └── grpc_asyncio.cpython-310.pyc
│           │       │   │   │   │           ├── base.py
│           │       │   │   │   │           ├── grpc.py
│           │       │   │   │   │           └── grpc_asyncio.py
│           │       │   │   │   └── types
│           │       │   │   │       ├── __init__.py
│           │       │   │   │       ├── __pycache__
│           │       │   │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │   │       │   ├── geometry.cpython-310.pyc
│           │       │   │   │       │   ├── image_annotator.cpython-310.pyc
│           │       │   │   │       │   ├── product_search.cpython-310.pyc
│           │       │   │   │       │   ├── product_search_service.cpython-310.pyc
│           │       │   │   │       │   ├── text_annotation.cpython-310.pyc
│           │       │   │   │       │   └── web_detection.cpython-310.pyc
│           │       │   │   │       ├── geometry.py
│           │       │   │   │       ├── image_annotator.py
│           │       │   │   │       ├── product_search.py
│           │       │   │   │       ├── product_search_service.py
│           │       │   │   │       ├── text_annotation.py
│           │       │   │   │       └── web_detection.py
│           │       │   │   ├── vision_v1p1beta1
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   └── __init__.cpython-310.pyc
│           │       │   │   │   ├── py.typed
│           │       │   │   │   ├── services
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   ├── __pycache__
│           │       │   │   │   │   │   └── __init__.cpython-310.pyc
│           │       │   │   │   │   └── image_annotator
│           │       │   │   │   │       ├── __init__.py
│           │       │   │   │   │       ├── __pycache__
│           │       │   │   │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │       │   ├── async_client.cpython-310.pyc
│           │       │   │   │   │       │   └── client.cpython-310.pyc
│           │       │   │   │   │       ├── async_client.py
│           │       │   │   │   │       ├── client.py
│           │       │   │   │   │       └── transports
│           │       │   │   │   │           ├── __init__.py
│           │       │   │   │   │           ├── __pycache__
│           │       │   │   │   │           │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │           │   ├── base.cpython-310.pyc
│           │       │   │   │   │           │   ├── grpc.cpython-310.pyc
│           │       │   │   │   │           │   └── grpc_asyncio.cpython-310.pyc
│           │       │   │   │   │           ├── base.py
│           │       │   │   │   │           ├── grpc.py
│           │       │   │   │   │           └── grpc_asyncio.py
│           │       │   │   │   └── types
│           │       │   │   │       ├── __init__.py
│           │       │   │   │       ├── __pycache__
│           │       │   │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │   │       │   ├── geometry.cpython-310.pyc
│           │       │   │   │       │   ├── image_annotator.cpython-310.pyc
│           │       │   │   │       │   ├── text_annotation.cpython-310.pyc
│           │       │   │   │       │   └── web_detection.cpython-310.pyc
│           │       │   │   │       ├── geometry.py
│           │       │   │   │       ├── image_annotator.py
│           │       │   │   │       ├── text_annotation.py
│           │       │   │   │       └── web_detection.py
│           │       │   │   ├── vision_v1p2beta1
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   └── __init__.cpython-310.pyc
│           │       │   │   │   ├── py.typed
│           │       │   │   │   ├── services
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   ├── __pycache__
│           │       │   │   │   │   │   └── __init__.cpython-310.pyc
│           │       │   │   │   │   └── image_annotator
│           │       │   │   │   │       ├── __init__.py
│           │       │   │   │   │       ├── __pycache__
│           │       │   │   │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │       │   ├── async_client.cpython-310.pyc
│           │       │   │   │   │       │   └── client.cpython-310.pyc
│           │       │   │   │   │       ├── async_client.py
│           │       │   │   │   │       ├── client.py
│           │       │   │   │   │       └── transports
│           │       │   │   │   │           ├── __init__.py
│           │       │   │   │   │           ├── __pycache__
│           │       │   │   │   │           │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │           │   ├── base.cpython-310.pyc
│           │       │   │   │   │           │   ├── grpc.cpython-310.pyc
│           │       │   │   │   │           │   └── grpc_asyncio.cpython-310.pyc
│           │       │   │   │   │           ├── base.py
│           │       │   │   │   │           ├── grpc.py
│           │       │   │   │   │           └── grpc_asyncio.py
│           │       │   │   │   └── types
│           │       │   │   │       ├── __init__.py
│           │       │   │   │       ├── __pycache__
│           │       │   │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │   │       │   ├── geometry.cpython-310.pyc
│           │       │   │   │       │   ├── image_annotator.cpython-310.pyc
│           │       │   │   │       │   ├── text_annotation.cpython-310.pyc
│           │       │   │   │       │   └── web_detection.cpython-310.pyc
│           │       │   │   │       ├── geometry.py
│           │       │   │   │       ├── image_annotator.py
│           │       │   │   │       ├── text_annotation.py
│           │       │   │   │       └── web_detection.py
│           │       │   │   ├── vision_v1p3beta1
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   └── __init__.cpython-310.pyc
│           │       │   │   │   ├── py.typed
│           │       │   │   │   ├── services
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   ├── __pycache__
│           │       │   │   │   │   │   └── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── image_annotator
│           │       │   │   │   │   │   ├── __init__.py
│           │       │   │   │   │   │   ├── __pycache__
│           │       │   │   │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   │   │   ├── async_client.cpython-310.pyc
│           │       │   │   │   │   │   │   └── client.cpython-310.pyc
│           │       │   │   │   │   │   ├── async_client.py
│           │       │   │   │   │   │   ├── client.py
│           │       │   │   │   │   │   └── transports
│           │       │   │   │   │   │       ├── __init__.py
│           │       │   │   │   │   │       ├── __pycache__
│           │       │   │   │   │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   │       │   ├── base.cpython-310.pyc
│           │       │   │   │   │   │       │   ├── grpc.cpython-310.pyc
│           │       │   │   │   │   │       │   └── grpc_asyncio.cpython-310.pyc
│           │       │   │   │   │   │       ├── base.py
│           │       │   │   │   │   │       ├── grpc.py
│           │       │   │   │   │   │       └── grpc_asyncio.py
│           │       │   │   │   │   └── product_search
│           │       │   │   │   │       ├── __init__.py
│           │       │   │   │   │       ├── __pycache__
│           │       │   │   │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │       │   ├── async_client.cpython-310.pyc
│           │       │   │   │   │       │   ├── client.cpython-310.pyc
│           │       │   │   │   │       │   └── pagers.cpython-310.pyc
│           │       │   │   │   │       ├── async_client.py
│           │       │   │   │   │       ├── client.py
│           │       │   │   │   │       ├── pagers.py
│           │       │   │   │   │       └── transports
│           │       │   │   │   │           ├── __init__.py
│           │       │   │   │   │           ├── __pycache__
│           │       │   │   │   │           │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │           │   ├── base.cpython-310.pyc
│           │       │   │   │   │           │   ├── grpc.cpython-310.pyc
│           │       │   │   │   │           │   └── grpc_asyncio.cpython-310.pyc
│           │       │   │   │   │           ├── base.py
│           │       │   │   │   │           ├── grpc.py
│           │       │   │   │   │           └── grpc_asyncio.py
│           │       │   │   │   └── types
│           │       │   │   │       ├── __init__.py
│           │       │   │   │       ├── __pycache__
│           │       │   │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │   │       │   ├── geometry.cpython-310.pyc
│           │       │   │   │       │   ├── image_annotator.cpython-310.pyc
│           │       │   │   │       │   ├── product_search.cpython-310.pyc
│           │       │   │   │       │   ├── product_search_service.cpython-310.pyc
│           │       │   │   │       │   ├── text_annotation.cpython-310.pyc
│           │       │   │   │       │   └── web_detection.cpython-310.pyc
│           │       │   │   │       ├── geometry.py
│           │       │   │   │       ├── image_annotator.py
│           │       │   │   │       ├── product_search.py
│           │       │   │   │       ├── product_search_service.py
│           │       │   │   │       ├── text_annotation.py
│           │       │   │   │       └── web_detection.py
│           │       │   │   └── vision_v1p4beta1
│           │       │   │       ├── __init__.py
│           │       │   │       ├── __pycache__
│           │       │   │       │   └── __init__.cpython-310.pyc
│           │       │   │       ├── py.typed
│           │       │   │       ├── services
│           │       │   │       │   ├── __init__.py
│           │       │   │       │   ├── __pycache__
│           │       │   │       │   │   └── __init__.cpython-310.pyc
│           │       │   │       │   ├── image_annotator
│           │       │   │       │   │   ├── __init__.py
│           │       │   │       │   │   ├── __pycache__
│           │       │   │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │       │   │   │   ├── async_client.cpython-310.pyc
│           │       │   │       │   │   │   └── client.cpython-310.pyc
│           │       │   │       │   │   ├── async_client.py
│           │       │   │       │   │   ├── client.py
│           │       │   │       │   │   └── transports
│           │       │   │       │   │       ├── __init__.py
│           │       │   │       │   │       ├── __pycache__
│           │       │   │       │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │       │   │       │   ├── base.cpython-310.pyc
│           │       │   │       │   │       │   ├── grpc.cpython-310.pyc
│           │       │   │       │   │       │   └── grpc_asyncio.cpython-310.pyc
│           │       │   │       │   │       ├── base.py
│           │       │   │       │   │       ├── grpc.py
│           │       │   │       │   │       └── grpc_asyncio.py
│           │       │   │       │   └── product_search
│           │       │   │       │       ├── __init__.py
│           │       │   │       │       ├── __pycache__
│           │       │   │       │       │   ├── __init__.cpython-310.pyc
│           │       │   │       │       │   ├── async_client.cpython-310.pyc
│           │       │   │       │       │   ├── client.cpython-310.pyc
│           │       │   │       │       │   └── pagers.cpython-310.pyc
│           │       │   │       │       ├── async_client.py
│           │       │   │       │       ├── client.py
│           │       │   │       │       ├── pagers.py
│           │       │   │       │       └── transports
│           │       │   │       │           ├── __init__.py
│           │       │   │       │           ├── __pycache__
│           │       │   │       │           │   ├── __init__.cpython-310.pyc
│           │       │   │       │           │   ├── base.cpython-310.pyc
│           │       │   │       │           │   ├── grpc.cpython-310.pyc
│           │       │   │       │           │   └── grpc_asyncio.cpython-310.pyc
│           │       │   │       │           ├── base.py
│           │       │   │       │           ├── grpc.py
│           │       │   │       │           └── grpc_asyncio.py
│           │       │   │       └── types
│           │       │   │           ├── __init__.py
│           │       │   │           ├── __pycache__
│           │       │   │           │   ├── __init__.cpython-310.pyc
│           │       │   │           │   ├── face.cpython-310.pyc
│           │       │   │           │   ├── geometry.cpython-310.pyc
│           │       │   │           │   ├── image_annotator.cpython-310.pyc
│           │       │   │           │   ├── product_search.cpython-310.pyc
│           │       │   │           │   ├── product_search_service.cpython-310.pyc
│           │       │   │           │   ├── text_annotation.cpython-310.pyc
│           │       │   │           │   └── web_detection.cpython-310.pyc
│           │       │   │           ├── face.py
│           │       │   │           ├── geometry.py
│           │       │   │           ├── image_annotator.py
│           │       │   │           ├── product_search.py
│           │       │   │           ├── product_search_service.py
│           │       │   │           ├── text_annotation.py
│           │       │   │           └── web_detection.py
│           │       │   ├── gapic
│           │       │   │   └── metadata
│           │       │   │       ├── __init__.py
│           │       │   │       ├── __pycache__
│           │       │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │       │   └── gapic_metadata_pb2.cpython-310.pyc
│           │       │   │       ├── gapic_metadata.proto
│           │       │   │       └── gapic_metadata_pb2.py
│           │       │   ├── logging
│           │       │   │   └── type
│           │       │   │       ├── __init__.py
│           │       │   │       ├── __pycache__
│           │       │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │       │   ├── http_request_pb2.cpython-310.pyc
│           │       │   │       │   └── log_severity_pb2.cpython-310.pyc
│           │       │   │       ├── http_request.proto
│           │       │   │       ├── http_request_pb2.py
│           │       │   │       ├── log_severity.proto
│           │       │   │       └── log_severity_pb2.py
│           │       │   ├── longrunning
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── operations_grpc.cpython-310.pyc
│           │       │   │   │   ├── operations_grpc_pb2.cpython-310.pyc
│           │       │   │   │   ├── operations_pb2.cpython-310.pyc
│           │       │   │   │   ├── operations_pb2_grpc.cpython-310.pyc
│           │       │   │   │   ├── operations_proto.cpython-310.pyc
│           │       │   │   │   └── operations_proto_pb2.cpython-310.pyc
│           │       │   │   ├── operations.proto
│           │       │   │   ├── operations_grpc.py
│           │       │   │   ├── operations_grpc_pb2.py
│           │       │   │   ├── operations_pb2.py
│           │       │   │   ├── operations_pb2_grpc.py
│           │       │   │   ├── operations_proto.py
│           │       │   │   └── operations_proto_pb2.py
│           │       │   ├── oauth2
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── _client.cpython-310.pyc
│           │       │   │   │   ├── _client_async.cpython-310.pyc
│           │       │   │   │   ├── _credentials_async.cpython-310.pyc
│           │       │   │   │   ├── _id_token_async.cpython-310.pyc
│           │       │   │   │   ├── _reauth_async.cpython-310.pyc
│           │       │   │   │   ├── _service_account_async.cpython-310.pyc
│           │       │   │   │   ├── challenges.cpython-310.pyc
│           │       │   │   │   ├── credentials.cpython-310.pyc
│           │       │   │   │   ├── gdch_credentials.cpython-310.pyc
│           │       │   │   │   ├── id_token.cpython-310.pyc
│           │       │   │   │   ├── reauth.cpython-310.pyc
│           │       │   │   │   ├── service_account.cpython-310.pyc
│           │       │   │   │   ├── sts.cpython-310.pyc
│           │       │   │   │   └── utils.cpython-310.pyc
│           │       │   │   ├── _client.py
│           │       │   │   ├── _client_async.py
│           │       │   │   ├── _credentials_async.py
│           │       │   │   ├── _id_token_async.py
│           │       │   │   ├── _reauth_async.py
│           │       │   │   ├── _service_account_async.py
│           │       │   │   ├── challenges.py
│           │       │   │   ├── credentials.py
│           │       │   │   ├── gdch_credentials.py
│           │       │   │   ├── id_token.py
│           │       │   │   ├── reauth.py
│           │       │   │   ├── service_account.py
│           │       │   │   ├── sts.py
│           │       │   │   └── utils.py
│           │       │   ├── protobuf
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── any_pb2.cpython-310.pyc
│           │       │   │   │   ├── api_pb2.cpython-310.pyc
│           │       │   │   │   ├── descriptor.cpython-310.pyc
│           │       │   │   │   ├── descriptor_database.cpython-310.pyc
│           │       │   │   │   ├── descriptor_pb2.cpython-310.pyc
│           │       │   │   │   ├── descriptor_pool.cpython-310.pyc
│           │       │   │   │   ├── duration_pb2.cpython-310.pyc
│           │       │   │   │   ├── empty_pb2.cpython-310.pyc
│           │       │   │   │   ├── field_mask_pb2.cpython-310.pyc
│           │       │   │   │   ├── json_format.cpython-310.pyc
│           │       │   │   │   ├── message.cpython-310.pyc
│           │       │   │   │   ├── message_factory.cpython-310.pyc
│           │       │   │   │   ├── proto_builder.cpython-310.pyc
│           │       │   │   │   ├── reflection.cpython-310.pyc
│           │       │   │   │   ├── service.cpython-310.pyc
│           │       │   │   │   ├── service_reflection.cpython-310.pyc
│           │       │   │   │   ├── source_context_pb2.cpython-310.pyc
│           │       │   │   │   ├── struct_pb2.cpython-310.pyc
│           │       │   │   │   ├── symbol_database.cpython-310.pyc
│           │       │   │   │   ├── text_encoding.cpython-310.pyc
│           │       │   │   │   ├── text_format.cpython-310.pyc
│           │       │   │   │   ├── timestamp_pb2.cpython-310.pyc
│           │       │   │   │   ├── type_pb2.cpython-310.pyc
│           │       │   │   │   ├── unknown_fields.cpython-310.pyc
│           │       │   │   │   └── wrappers_pb2.cpython-310.pyc
│           │       │   │   ├── any_pb2.py
│           │       │   │   ├── api_pb2.py
│           │       │   │   ├── compiler
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   └── plugin_pb2.cpython-310.pyc
│           │       │   │   │   └── plugin_pb2.py
│           │       │   │   ├── descriptor.py
│           │       │   │   ├── descriptor_database.py
│           │       │   │   ├── descriptor_pb2.py
│           │       │   │   ├── descriptor_pool.py
│           │       │   │   ├── duration_pb2.py
│           │       │   │   ├── empty_pb2.py
│           │       │   │   ├── field_mask_pb2.py
│           │       │   │   ├── internal
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── _parameterized.cpython-310.pyc
│           │       │   │   │   │   ├── api_implementation.cpython-310.pyc
│           │       │   │   │   │   ├── builder.cpython-310.pyc
│           │       │   │   │   │   ├── containers.cpython-310.pyc
│           │       │   │   │   │   ├── decoder.cpython-310.pyc
│           │       │   │   │   │   ├── descriptor_database_test.cpython-310.pyc
│           │       │   │   │   │   ├── descriptor_pool_test.cpython-310.pyc
│           │       │   │   │   │   ├── descriptor_test.cpython-310.pyc
│           │       │   │   │   │   ├── encoder.cpython-310.pyc
│           │       │   │   │   │   ├── enum_type_wrapper.cpython-310.pyc
│           │       │   │   │   │   ├── extension_dict.cpython-310.pyc
│           │       │   │   │   │   ├── generator_test.cpython-310.pyc
│           │       │   │   │   │   ├── import_test.cpython-310.pyc
│           │       │   │   │   │   ├── json_format_test.cpython-310.pyc
│           │       │   │   │   │   ├── keywords_test.cpython-310.pyc
│           │       │   │   │   │   ├── message_factory_test.cpython-310.pyc
│           │       │   │   │   │   ├── message_listener.cpython-310.pyc
│           │       │   │   │   │   ├── message_test.cpython-310.pyc
│           │       │   │   │   │   ├── proto_builder_test.cpython-310.pyc
│           │       │   │   │   │   ├── python_message.cpython-310.pyc
│           │       │   │   │   │   ├── reflection_test.cpython-310.pyc
│           │       │   │   │   │   ├── service_reflection_test.cpython-310.pyc
│           │       │   │   │   │   ├── symbol_database_test.cpython-310.pyc
│           │       │   │   │   │   ├── test_util.cpython-310.pyc
│           │       │   │   │   │   ├── testing_refleaks.cpython-310.pyc
│           │       │   │   │   │   ├── text_encoding_test.cpython-310.pyc
│           │       │   │   │   │   ├── text_format_test.cpython-310.pyc
│           │       │   │   │   │   ├── type_checkers.cpython-310.pyc
│           │       │   │   │   │   ├── unknown_fields_test.cpython-310.pyc
│           │       │   │   │   │   ├── well_known_types.cpython-310.pyc
│           │       │   │   │   │   ├── well_known_types_test.cpython-310.pyc
│           │       │   │   │   │   ├── wire_format.cpython-310.pyc
│           │       │   │   │   │   └── wire_format_test.cpython-310.pyc
│           │       │   │   │   ├── _parameterized.py
│           │       │   │   │   ├── api_implementation.py
│           │       │   │   │   ├── builder.py
│           │       │   │   │   ├── containers.py
│           │       │   │   │   ├── decoder.py
│           │       │   │   │   ├── descriptor_database_test.py
│           │       │   │   │   ├── descriptor_pool_test.py
│           │       │   │   │   ├── descriptor_test.py
│           │       │   │   │   ├── encoder.py
│           │       │   │   │   ├── enum_type_wrapper.py
│           │       │   │   │   ├── extension_dict.py
│           │       │   │   │   ├── generator_test.py
│           │       │   │   │   ├── import_test.py
│           │       │   │   │   ├── import_test_package
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   └── __pycache__
│           │       │   │   │   │       └── __init__.cpython-310.pyc
│           │       │   │   │   ├── json_format_test.py
│           │       │   │   │   ├── keywords_test.py
│           │       │   │   │   ├── message_factory_test.py
│           │       │   │   │   ├── message_listener.py
│           │       │   │   │   ├── message_test.py
│           │       │   │   │   ├── proto_builder_test.py
│           │       │   │   │   ├── python_message.py
│           │       │   │   │   ├── reflection_test.py
│           │       │   │   │   ├── service_reflection_test.py
│           │       │   │   │   ├── symbol_database_test.py
│           │       │   │   │   ├── test_util.py
│           │       │   │   │   ├── testing_refleaks.py
│           │       │   │   │   ├── text_encoding_test.py
│           │       │   │   │   ├── text_format_test.py
│           │       │   │   │   ├── type_checkers.py
│           │       │   │   │   ├── unknown_fields_test.py
│           │       │   │   │   ├── well_known_types.py
│           │       │   │   │   ├── well_known_types_test.py
│           │       │   │   │   ├── wire_format.py
│           │       │   │   │   └── wire_format_test.py
│           │       │   │   ├── json_format.py
│           │       │   │   ├── message.py
│           │       │   │   ├── message_factory.py
│           │       │   │   ├── proto_builder.py
│           │       │   │   ├── pyext
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   └── cpp_message.cpython-310.pyc
│           │       │   │   │   └── cpp_message.py
│           │       │   │   ├── reflection.py
│           │       │   │   ├── service.py
│           │       │   │   ├── service_reflection.py
│           │       │   │   ├── source_context_pb2.py
│           │       │   │   ├── struct_pb2.py
│           │       │   │   ├── symbol_database.py
│           │       │   │   ├── text_encoding.py
│           │       │   │   ├── text_format.py
│           │       │   │   ├── timestamp_pb2.py
│           │       │   │   ├── type_pb2.py
│           │       │   │   ├── unknown_fields.py
│           │       │   │   ├── util
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   └── __pycache__
│           │       │   │   │       └── __init__.cpython-310.pyc
│           │       │   │   └── wrappers_pb2.py
│           │       │   ├── rpc
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── code_pb2.cpython-310.pyc
│           │       │   │   │   ├── error_details_pb2.cpython-310.pyc
│           │       │   │   │   └── status_pb2.cpython-310.pyc
│           │       │   │   ├── code.proto
│           │       │   │   ├── code_pb2.py
│           │       │   │   ├── context
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   └── attribute_context_pb2.cpython-310.pyc
│           │       │   │   │   ├── attribute_context.proto
│           │       │   │   │   └── attribute_context_pb2.py
│           │       │   │   ├── error_details.proto
│           │       │   │   ├── error_details_pb2.py
│           │       │   │   ├── status.proto
│           │       │   │   └── status_pb2.py
│           │       │   └── type
│           │       │       ├── __init__.py
│           │       │       ├── __pycache__
│           │       │       │   ├── __init__.cpython-310.pyc
│           │       │       │   ├── calendar_period_pb2.cpython-310.pyc
│           │       │       │   ├── color_pb2.cpython-310.pyc
│           │       │       │   ├── date_pb2.cpython-310.pyc
│           │       │       │   ├── datetime_pb2.cpython-310.pyc
│           │       │       │   ├── dayofweek_pb2.cpython-310.pyc
│           │       │       │   ├── decimal_pb2.cpython-310.pyc
│           │       │       │   ├── expr_pb2.cpython-310.pyc
│           │       │       │   ├── fraction_pb2.cpython-310.pyc
│           │       │       │   ├── interval_pb2.cpython-310.pyc
│           │       │       │   ├── latlng_pb2.cpython-310.pyc
│           │       │       │   ├── localized_text_pb2.cpython-310.pyc
│           │       │       │   ├── money_pb2.cpython-310.pyc
│           │       │       │   ├── month_pb2.cpython-310.pyc
│           │       │       │   ├── phone_number_pb2.cpython-310.pyc
│           │       │       │   ├── postal_address_pb2.cpython-310.pyc
│           │       │       │   ├── quaternion_pb2.cpython-310.pyc
│           │       │       │   └── timeofday_pb2.cpython-310.pyc
│           │       │       ├── calendar_period.proto
│           │       │       ├── calendar_period_pb2.py
│           │       │       ├── color.proto
│           │       │       ├── color_pb2.py
│           │       │       ├── date.proto
│           │       │       ├── date_pb2.py
│           │       │       ├── datetime.proto
│           │       │       ├── datetime_pb2.py
│           │       │       ├── dayofweek.proto
│           │       │       ├── dayofweek_pb2.py
│           │       │       ├── decimal.proto
│           │       │       ├── decimal_pb2.py
│           │       │       ├── expr.proto
│           │       │       ├── expr_pb2.py
│           │       │       ├── fraction.proto
│           │       │       ├── fraction_pb2.py
│           │       │       ├── interval.proto
│           │       │       ├── interval_pb2.py
│           │       │       ├── latlng.proto
│           │       │       ├── latlng_pb2.py
│           │       │       ├── localized_text.proto
│           │       │       ├── localized_text_pb2.py
│           │       │       ├── money.proto
│           │       │       ├── money_pb2.py
│           │       │       ├── month.proto
│           │       │       ├── month_pb2.py
│           │       │       ├── phone_number.proto
│           │       │       ├── phone_number_pb2.py
│           │       │       ├── postal_address.proto
│           │       │       ├── postal_address_pb2.py
│           │       │       ├── quaternion.proto
│           │       │       ├── quaternion_pb2.py
│           │       │       ├── timeofday.proto
│           │       │       └── timeofday_pb2.py
│           │       ├── google_api_core-2.10.1-py3.9-nspkg.pth
│           │       ├── google_api_core-2.10.1.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   ├── namespace_packages.txt
│           │       │   └── top_level.txt
│           │       ├── google_auth-2.11.1-py3.9-nspkg.pth
│           │       ├── google_auth-2.11.1.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   ├── namespace_packages.txt
│           │       │   └── top_level.txt
│           │       ├── google_cloud_vision-3.1.2-py3.9-nspkg.pth
│           │       ├── google_cloud_vision-3.1.2.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   ├── namespace_packages.txt
│           │       │   └── top_level.txt
│           │       ├── googleapis_common_protos-1.56.4-py3.10-nspkg.pth
│           │       ├── googleapis_common_protos-1.56.4.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   ├── namespace_packages.txt
│           │       │   └── top_level.txt
│           │       ├── googletrans
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── client.cpython-310.pyc
│           │       │   │   ├── constants.cpython-310.pyc
│           │       │   │   ├── gtoken.cpython-310.pyc
│           │       │   │   ├── models.cpython-310.pyc
│           │       │   │   ├── urls.cpython-310.pyc
│           │       │   │   └── utils.cpython-310.pyc
│           │       │   ├── client.py
│           │       │   ├── constants.py
│           │       │   ├── gtoken.py
│           │       │   ├── models.py
│           │       │   ├── urls.py
│           │       │   └── utils.py
│           │       ├── googletrans-3.1.0a0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── grpc
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _auth.cpython-310.pyc
│           │       │   │   ├── _channel.cpython-310.pyc
│           │       │   │   ├── _common.cpython-310.pyc
│           │       │   │   ├── _compression.cpython-310.pyc
│           │       │   │   ├── _grpcio_metadata.cpython-310.pyc
│           │       │   │   ├── _interceptor.cpython-310.pyc
│           │       │   │   ├── _plugin_wrapping.cpython-310.pyc
│           │       │   │   ├── _runtime_protos.cpython-310.pyc
│           │       │   │   ├── _server.cpython-310.pyc
│           │       │   │   ├── _simple_stubs.cpython-310.pyc
│           │       │   │   └── _utilities.cpython-310.pyc
│           │       │   ├── _auth.py
│           │       │   ├── _channel.py
│           │       │   ├── _common.py
│           │       │   ├── _compression.py
│           │       │   ├── _cython
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   └── __init__.cpython-310.pyc
│           │       │   │   ├── _credentials
│           │       │   │   │   └── roots.pem
│           │       │   │   ├── _cygrpc
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   └── __pycache__
│           │       │   │   │       └── __init__.cpython-310.pyc
│           │       │   │   └── cygrpc.cp310-win_amd64.pyd
│           │       │   ├── _grpcio_metadata.py
│           │       │   ├── _interceptor.py
│           │       │   ├── _plugin_wrapping.py
│           │       │   ├── _runtime_protos.py
│           │       │   ├── _server.py
│           │       │   ├── _simple_stubs.py
│           │       │   ├── _utilities.py
│           │       │   ├── aio
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── _base_call.cpython-310.pyc
│           │       │   │   │   ├── _base_channel.cpython-310.pyc
│           │       │   │   │   ├── _base_server.cpython-310.pyc
│           │       │   │   │   ├── _call.cpython-310.pyc
│           │       │   │   │   ├── _channel.cpython-310.pyc
│           │       │   │   │   ├── _interceptor.cpython-310.pyc
│           │       │   │   │   ├── _metadata.cpython-310.pyc
│           │       │   │   │   ├── _server.cpython-310.pyc
│           │       │   │   │   ├── _typing.cpython-310.pyc
│           │       │   │   │   └── _utils.cpython-310.pyc
│           │       │   │   ├── _base_call.py
│           │       │   │   ├── _base_channel.py
│           │       │   │   ├── _base_server.py
│           │       │   │   ├── _call.py
│           │       │   │   ├── _channel.py
│           │       │   │   ├── _interceptor.py
│           │       │   │   ├── _metadata.py
│           │       │   │   ├── _server.py
│           │       │   │   ├── _typing.py
│           │       │   │   └── _utils.py
│           │       │   ├── beta
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── _client_adaptations.cpython-310.pyc
│           │       │   │   │   ├── _metadata.cpython-310.pyc
│           │       │   │   │   ├── _server_adaptations.cpython-310.pyc
│           │       │   │   │   ├── implementations.cpython-310.pyc
│           │       │   │   │   ├── interfaces.cpython-310.pyc
│           │       │   │   │   └── utilities.cpython-310.pyc
│           │       │   │   ├── _client_adaptations.py
│           │       │   │   ├── _metadata.py
│           │       │   │   ├── _server_adaptations.py
│           │       │   │   ├── implementations.py
│           │       │   │   ├── interfaces.py
│           │       │   │   └── utilities.py
│           │       │   ├── experimental
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── gevent.cpython-310.pyc
│           │       │   │   │   └── session_cache.cpython-310.pyc
│           │       │   │   ├── aio
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   └── __pycache__
│           │       │   │   │       └── __init__.cpython-310.pyc
│           │       │   │   ├── gevent.py
│           │       │   │   └── session_cache.py
│           │       │   └── framework
│           │       │       ├── __init__.py
│           │       │       ├── __pycache__
│           │       │       │   └── __init__.cpython-310.pyc
│           │       │       ├── common
│           │       │       │   ├── __init__.py
│           │       │       │   ├── __pycache__
│           │       │       │   │   ├── __init__.cpython-310.pyc
│           │       │       │   │   ├── cardinality.cpython-310.pyc
│           │       │       │   │   └── style.cpython-310.pyc
│           │       │       │   ├── cardinality.py
│           │       │       │   └── style.py
│           │       │       ├── foundation
│           │       │       │   ├── __init__.py
│           │       │       │   ├── __pycache__
│           │       │       │   │   ├── __init__.cpython-310.pyc
│           │       │       │   │   ├── abandonment.cpython-310.pyc
│           │       │       │   │   ├── callable_util.cpython-310.pyc
│           │       │       │   │   ├── future.cpython-310.pyc
│           │       │       │   │   ├── logging_pool.cpython-310.pyc
│           │       │       │   │   ├── stream.cpython-310.pyc
│           │       │       │   │   └── stream_util.cpython-310.pyc
│           │       │       │   ├── abandonment.py
│           │       │       │   ├── callable_util.py
│           │       │       │   ├── future.py
│           │       │       │   ├── logging_pool.py
│           │       │       │   ├── stream.py
│           │       │       │   └── stream_util.py
│           │       │       └── interfaces
│           │       │           ├── __init__.py
│           │       │           ├── __pycache__
│           │       │           │   └── __init__.cpython-310.pyc
│           │       │           ├── base
│           │       │           │   ├── __init__.py
│           │       │           │   ├── __pycache__
│           │       │           │   │   ├── __init__.cpython-310.pyc
│           │       │           │   │   ├── base.cpython-310.pyc
│           │       │           │   │   └── utilities.cpython-310.pyc
│           │       │           │   ├── base.py
│           │       │           │   └── utilities.py
│           │       │           └── face
│           │       │               ├── __init__.py
│           │       │               ├── __pycache__
│           │       │               │   ├── __init__.cpython-310.pyc
│           │       │               │   ├── face.cpython-310.pyc
│           │       │               │   └── utilities.cpython-310.pyc
│           │       │               ├── face.py
│           │       │               └── utilities.py
│           │       ├── grpc_status
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _async.cpython-310.pyc
│           │       │   │   ├── _common.cpython-310.pyc
│           │       │   │   └── rpc_status.cpython-310.pyc
│           │       │   ├── _async.py
│           │       │   ├── _common.py
│           │       │   └── rpc_status.py
│           │       ├── grpcio-1.49.1.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── grpcio_status-1.49.1.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── h11
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _abnf.cpython-310.pyc
│           │       │   │   ├── _connection.cpython-310.pyc
│           │       │   │   ├── _events.cpython-310.pyc
│           │       │   │   ├── _headers.cpython-310.pyc
│           │       │   │   ├── _readers.cpython-310.pyc
│           │       │   │   ├── _receivebuffer.cpython-310.pyc
│           │       │   │   ├── _state.cpython-310.pyc
│           │       │   │   ├── _util.cpython-310.pyc
│           │       │   │   ├── _version.cpython-310.pyc
│           │       │   │   └── _writers.cpython-310.pyc
│           │       │   ├── _abnf.py
│           │       │   ├── _connection.py
│           │       │   ├── _events.py
│           │       │   ├── _headers.py
│           │       │   ├── _readers.py
│           │       │   ├── _receivebuffer.py
│           │       │   ├── _state.py
│           │       │   ├── _util.py
│           │       │   ├── _version.py
│           │       │   ├── _writers.py
│           │       │   └── tests
│           │       │       ├── __init__.py
│           │       │       ├── __pycache__
│           │       │       │   ├── __init__.cpython-310.pyc
│           │       │       │   ├── helpers.cpython-310.pyc
│           │       │       │   ├── test_against_stdlib_http.cpython-310.pyc
│           │       │       │   ├── test_connection.cpython-310.pyc
│           │       │       │   ├── test_events.cpython-310.pyc
│           │       │       │   ├── test_headers.cpython-310.pyc
│           │       │       │   ├── test_helpers.cpython-310.pyc
│           │       │       │   ├── test_io.cpython-310.pyc
│           │       │       │   ├── test_receivebuffer.cpython-310.pyc
│           │       │       │   ├── test_state.cpython-310.pyc
│           │       │       │   └── test_util.cpython-310.pyc
│           │       │       ├── data
│           │       │       │   └── test-file
│           │       │       ├── helpers.py
│           │       │       ├── test_against_stdlib_http.py
│           │       │       ├── test_connection.py
│           │       │       ├── test_events.py
│           │       │       ├── test_headers.py
│           │       │       ├── test_helpers.py
│           │       │       ├── test_io.py
│           │       │       ├── test_receivebuffer.py
│           │       │       ├── test_state.py
│           │       │       └── test_util.py
│           │       ├── h11-0.9.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE.txt
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── h2
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── config.cpython-310.pyc
│           │       │   │   ├── connection.cpython-310.pyc
│           │       │   │   ├── errors.cpython-310.pyc
│           │       │   │   ├── events.cpython-310.pyc
│           │       │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   ├── frame_buffer.cpython-310.pyc
│           │       │   │   ├── settings.cpython-310.pyc
│           │       │   │   ├── stream.cpython-310.pyc
│           │       │   │   ├── utilities.cpython-310.pyc
│           │       │   │   └── windows.cpython-310.pyc
│           │       │   ├── config.py
│           │       │   ├── connection.py
│           │       │   ├── errors.py
│           │       │   ├── events.py
│           │       │   ├── exceptions.py
│           │       │   ├── frame_buffer.py
│           │       │   ├── settings.py
│           │       │   ├── stream.py
│           │       │   ├── utilities.py
│           │       │   └── windows.py
│           │       ├── h2-3.2.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── hpack
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── compat.cpython-310.pyc
│           │       │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   ├── hpack.cpython-310.pyc
│           │       │   │   ├── hpack_compat.cpython-310.pyc
│           │       │   │   ├── huffman.cpython-310.pyc
│           │       │   │   ├── huffman_constants.cpython-310.pyc
│           │       │   │   ├── huffman_table.cpython-310.pyc
│           │       │   │   ├── struct.cpython-310.pyc
│           │       │   │   └── table.cpython-310.pyc
│           │       │   ├── compat.py
│           │       │   ├── exceptions.py
│           │       │   ├── hpack.py
│           │       │   ├── hpack_compat.py
│           │       │   ├── huffman.py
│           │       │   ├── huffman_constants.py
│           │       │   ├── huffman_table.py
│           │       │   ├── struct.py
│           │       │   └── table.py
│           │       ├── hpack-3.0.0.dist-info
│           │       │   ├── DESCRIPTION.rst
│           │       │   ├── INSTALLER
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   ├── metadata.json
│           │       │   └── top_level.txt
│           │       ├── hstspreload
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   └── __init__.cpython-310.pyc
│           │       │   └── hstspreload.bin
│           │       ├── hstspreload-2022.10.1.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── httpcore
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _exceptions.cpython-310.pyc
│           │       │   │   ├── _threadlock.cpython-310.pyc
│           │       │   │   ├── _types.cpython-310.pyc
│           │       │   │   └── _utils.cpython-310.pyc
│           │       │   ├── _async
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── base.cpython-310.pyc
│           │       │   │   │   ├── connection.cpython-310.pyc
│           │       │   │   │   ├── connection_pool.cpython-310.pyc
│           │       │   │   │   ├── http11.cpython-310.pyc
│           │       │   │   │   ├── http2.cpython-310.pyc
│           │       │   │   │   └── http_proxy.cpython-310.pyc
│           │       │   │   ├── base.py
│           │       │   │   ├── connection.py
│           │       │   │   ├── connection_pool.py
│           │       │   │   ├── http11.py
│           │       │   │   ├── http2.py
│           │       │   │   └── http_proxy.py
│           │       │   ├── _backends
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── asyncio.cpython-310.pyc
│           │       │   │   │   ├── auto.cpython-310.pyc
│           │       │   │   │   ├── base.cpython-310.pyc
│           │       │   │   │   ├── sync.cpython-310.pyc
│           │       │   │   │   └── trio.cpython-310.pyc
│           │       │   │   ├── asyncio.py
│           │       │   │   ├── auto.py
│           │       │   │   ├── base.py
│           │       │   │   ├── sync.py
│           │       │   │   └── trio.py
│           │       │   ├── _exceptions.py
│           │       │   ├── _sync
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── base.cpython-310.pyc
│           │       │   │   │   ├── connection.cpython-310.pyc
│           │       │   │   │   ├── connection_pool.cpython-310.pyc
│           │       │   │   │   ├── http11.cpython-310.pyc
│           │       │   │   │   ├── http2.cpython-310.pyc
│           │       │   │   │   └── http_proxy.cpython-310.pyc
│           │       │   │   ├── base.py
│           │       │   │   ├── connection.py
│           │       │   │   ├── connection_pool.py
│           │       │   │   ├── http11.py
│           │       │   │   ├── http2.py
│           │       │   │   └── http_proxy.py
│           │       │   ├── _threadlock.py
│           │       │   ├── _types.py
│           │       │   ├── _utils.py
│           │       │   └── py.typed
│           │       ├── httpcore-0.9.1.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE.md
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── httptools
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   └── _version.cpython-310.pyc
│           │       │   ├── _version.py
│           │       │   └── parser
│           │       │       ├── __init__.py
│           │       │       ├── __pycache__
│           │       │       │   ├── __init__.cpython-310.pyc
│           │       │       │   └── errors.cpython-310.pyc
│           │       │       ├── errors.py
│           │       │       ├── parser.c
│           │       │       ├── parser.cp310-win_amd64.pyd
│           │       │       ├── url_parser.c
│           │       │       └── url_parser.cp310-win_amd64.pyd
│           │       ├── httptools-0.5.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── httpx
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── __version__.cpython-310.pyc
│           │       │   │   ├── _api.cpython-310.pyc
│           │       │   │   ├── _auth.cpython-310.pyc
│           │       │   │   ├── _client.cpython-310.pyc
│           │       │   │   ├── _config.cpython-310.pyc
│           │       │   │   ├── _content_streams.cpython-310.pyc
│           │       │   │   ├── _decoders.cpython-310.pyc
│           │       │   │   ├── _exceptions.cpython-310.pyc
│           │       │   │   ├── _models.cpython-310.pyc
│           │       │   │   ├── _status_codes.cpython-310.pyc
│           │       │   │   ├── _types.cpython-310.pyc
│           │       │   │   └── _utils.cpython-310.pyc
│           │       │   ├── __version__.py
│           │       │   ├── _api.py
│           │       │   ├── _auth.py
│           │       │   ├── _client.py
│           │       │   ├── _config.py
│           │       │   ├── _content_streams.py
│           │       │   ├── _decoders.py
│           │       │   ├── _exceptions.py
│           │       │   ├── _models.py
│           │       │   ├── _status_codes.py
│           │       │   ├── _transports
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── asgi.cpython-310.pyc
│           │       │   │   │   ├── urllib3.cpython-310.pyc
│           │       │   │   │   └── wsgi.cpython-310.pyc
│           │       │   │   ├── asgi.py
│           │       │   │   ├── urllib3.py
│           │       │   │   └── wsgi.py
│           │       │   ├── _types.py
│           │       │   ├── _utils.py
│           │       │   └── py.typed
│           │       ├── httpx-0.13.3.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE.md
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── hyperframe
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   ├── flags.cpython-310.pyc
│           │       │   │   └── frame.cpython-310.pyc
│           │       │   ├── exceptions.py
│           │       │   ├── flags.py
│           │       │   └── frame.py
│           │       ├── hyperframe-5.2.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── idna
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── codec.cpython-310.pyc
│           │       │   │   ├── compat.cpython-310.pyc
│           │       │   │   ├── core.cpython-310.pyc
│           │       │   │   ├── idnadata.cpython-310.pyc
│           │       │   │   ├── intranges.cpython-310.pyc
│           │       │   │   ├── package_data.cpython-310.pyc
│           │       │   │   └── uts46data.cpython-310.pyc
│           │       │   ├── codec.py
│           │       │   ├── compat.py
│           │       │   ├── core.py
│           │       │   ├── idnadata.py
│           │       │   ├── intranges.py
│           │       │   ├── package_data.py
│           │       │   └── uts46data.py
│           │       ├── idna-2.10.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE.rst
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── iniconfig
│           │       │   ├── __init__.py
│           │       │   ├── __init__.pyi
│           │       │   ├── __pycache__
│           │       │   │   └── __init__.cpython-310.pyc
│           │       │   └── py.typed
│           │       ├── iniconfig-1.1.1.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── multipart
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _version.cpython-310.pyc
│           │       │   │   ├── decoders.cpython-310.pyc
│           │       │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   └── multipart.cpython-310.pyc
│           │       │   ├── _version.py
│           │       │   ├── decoders.py
│           │       │   ├── exceptions.py
│           │       │   ├── multipart.py
│           │       │   └── tests
│           │       │       ├── __init__.py
│           │       │       ├── __pycache__
│           │       │       │   ├── __init__.cpython-310.pyc
│           │       │       │   ├── compat.cpython-310.pyc
│           │       │       │   └── test_multipart.cpython-310.pyc
│           │       │       ├── compat.py
│           │       │       └── test_multipart.py
│           │       ├── packaging
│           │       │   ├── __about__.py
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __about__.cpython-310.pyc
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _manylinux.cpython-310.pyc
│           │       │   │   ├── _musllinux.cpython-310.pyc
│           │       │   │   ├── _structures.cpython-310.pyc
│           │       │   │   ├── markers.cpython-310.pyc
│           │       │   │   ├── requirements.cpython-310.pyc
│           │       │   │   ├── specifiers.cpython-310.pyc
│           │       │   │   ├── tags.cpython-310.pyc
│           │       │   │   ├── utils.cpython-310.pyc
│           │       │   │   └── version.cpython-310.pyc
│           │       │   ├── _manylinux.py
│           │       │   ├── _musllinux.py
│           │       │   ├── _structures.py
│           │       │   ├── markers.py
│           │       │   ├── py.typed
│           │       │   ├── requirements.py
│           │       │   ├── specifiers.py
│           │       │   ├── tags.py
│           │       │   ├── utils.py
│           │       │   └── version.py
│           │       ├── packaging-21.3.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── LICENSE.APACHE
│           │       │   ├── LICENSE.BSD
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── pip
│           │       │   ├── __init__.py
│           │       │   ├── __main__.py
│           │       │   ├── _internal
│           │       │   │   ├── __init__.py
│           │       │   │   ├── build_env.py
│           │       │   │   ├── cache.py
│           │       │   │   ├── cli
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── autocompletion.py
│           │       │   │   │   ├── base_command.py
│           │       │   │   │   ├── cmdoptions.py
│           │       │   │   │   ├── command_context.py
│           │       │   │   │   ├── main.py
│           │       │   │   │   ├── main_parser.py
│           │       │   │   │   ├── parser.py
│           │       │   │   │   ├── progress_bars.py
│           │       │   │   │   ├── req_command.py
│           │       │   │   │   ├── spinners.py
│           │       │   │   │   └── status_codes.py
│           │       │   │   ├── commands
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── cache.py
│           │       │   │   │   ├── check.py
│           │       │   │   │   ├── completion.py
│           │       │   │   │   ├── configuration.py
│           │       │   │   │   ├── debug.py
│           │       │   │   │   ├── download.py
│           │       │   │   │   ├── freeze.py
│           │       │   │   │   ├── hash.py
│           │       │   │   │   ├── help.py
│           │       │   │   │   ├── index.py
│           │       │   │   │   ├── install.py
│           │       │   │   │   ├── list.py
│           │       │   │   │   ├── search.py
│           │       │   │   │   ├── show.py
│           │       │   │   │   ├── uninstall.py
│           │       │   │   │   └── wheel.py
│           │       │   │   ├── configuration.py
│           │       │   │   ├── distributions
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── base.py
│           │       │   │   │   ├── installed.py
│           │       │   │   │   ├── sdist.py
│           │       │   │   │   └── wheel.py
│           │       │   │   ├── exceptions.py
│           │       │   │   ├── index
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── collector.py
│           │       │   │   │   ├── package_finder.py
│           │       │   │   │   └── sources.py
│           │       │   │   ├── locations
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── _distutils.py
│           │       │   │   │   ├── _sysconfig.py
│           │       │   │   │   └── base.py
│           │       │   │   ├── main.py
│           │       │   │   ├── metadata
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── base.py
│           │       │   │   │   └── pkg_resources.py
│           │       │   │   ├── models
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── candidate.py
│           │       │   │   │   ├── direct_url.py
│           │       │   │   │   ├── format_control.py
│           │       │   │   │   ├── index.py
│           │       │   │   │   ├── link.py
│           │       │   │   │   ├── scheme.py
│           │       │   │   │   ├── search_scope.py
│           │       │   │   │   ├── selection_prefs.py
│           │       │   │   │   ├── target_python.py
│           │       │   │   │   └── wheel.py
│           │       │   │   ├── network
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── auth.py
│           │       │   │   │   ├── cache.py
│           │       │   │   │   ├── download.py
│           │       │   │   │   ├── lazy_wheel.py
│           │       │   │   │   ├── session.py
│           │       │   │   │   ├── utils.py
│           │       │   │   │   └── xmlrpc.py
│           │       │   │   ├── operations
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── build
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   ├── metadata.py
│           │       │   │   │   │   ├── metadata_editable.py
│           │       │   │   │   │   ├── metadata_legacy.py
│           │       │   │   │   │   ├── wheel.py
│           │       │   │   │   │   ├── wheel_editable.py
│           │       │   │   │   │   └── wheel_legacy.py
│           │       │   │   │   ├── check.py
│           │       │   │   │   ├── freeze.py
│           │       │   │   │   ├── install
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   ├── editable_legacy.py
│           │       │   │   │   │   ├── legacy.py
│           │       │   │   │   │   └── wheel.py
│           │       │   │   │   └── prepare.py
│           │       │   │   ├── pyproject.py
│           │       │   │   ├── req
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── constructors.py
│           │       │   │   │   ├── req_file.py
│           │       │   │   │   ├── req_install.py
│           │       │   │   │   ├── req_set.py
│           │       │   │   │   ├── req_tracker.py
│           │       │   │   │   └── req_uninstall.py
│           │       │   │   ├── resolution
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── base.py
│           │       │   │   │   ├── legacy
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   └── resolver.py
│           │       │   │   │   └── resolvelib
│           │       │   │   │       ├── __init__.py
│           │       │   │   │       ├── base.py
│           │       │   │   │       ├── candidates.py
│           │       │   │   │       ├── factory.py
│           │       │   │   │       ├── found_candidates.py
│           │       │   │   │       ├── provider.py
│           │       │   │   │       ├── reporter.py
│           │       │   │   │       ├── requirements.py
│           │       │   │   │       └── resolver.py
│           │       │   │   ├── self_outdated_check.py
│           │       │   │   ├── utils
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── _log.py
│           │       │   │   │   ├── appdirs.py
│           │       │   │   │   ├── compat.py
│           │       │   │   │   ├── compatibility_tags.py
│           │       │   │   │   ├── datetime.py
│           │       │   │   │   ├── deprecation.py
│           │       │   │   │   ├── direct_url_helpers.py
│           │       │   │   │   ├── distutils_args.py
│           │       │   │   │   ├── egg_link.py
│           │       │   │   │   ├── encoding.py
│           │       │   │   │   ├── entrypoints.py
│           │       │   │   │   ├── filesystem.py
│           │       │   │   │   ├── filetypes.py
│           │       │   │   │   ├── glibc.py
│           │       │   │   │   ├── hashes.py
│           │       │   │   │   ├── inject_securetransport.py
│           │       │   │   │   ├── logging.py
│           │       │   │   │   ├── misc.py
│           │       │   │   │   ├── models.py
│           │       │   │   │   ├── packaging.py
│           │       │   │   │   ├── parallel.py
│           │       │   │   │   ├── pkg_resources.py
│           │       │   │   │   ├── setuptools_build.py
│           │       │   │   │   ├── subprocess.py
│           │       │   │   │   ├── temp_dir.py
│           │       │   │   │   ├── unpacking.py
│           │       │   │   │   ├── urls.py
│           │       │   │   │   ├── virtualenv.py
│           │       │   │   │   └── wheel.py
│           │       │   │   ├── vcs
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── bazaar.py
│           │       │   │   │   ├── git.py
│           │       │   │   │   ├── mercurial.py
│           │       │   │   │   ├── subversion.py
│           │       │   │   │   └── versioncontrol.py
│           │       │   │   └── wheel_builder.py
│           │       │   ├── _vendor
│           │       │   │   ├── __init__.py
│           │       │   │   ├── cachecontrol
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── _cmd.py
│           │       │   │   │   ├── adapter.py
│           │       │   │   │   ├── cache.py
│           │       │   │   │   ├── caches
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   ├── file_cache.py
│           │       │   │   │   │   └── redis_cache.py
│           │       │   │   │   ├── compat.py
│           │       │   │   │   ├── controller.py
│           │       │   │   │   ├── filewrapper.py
│           │       │   │   │   ├── heuristics.py
│           │       │   │   │   ├── serialize.py
│           │       │   │   │   └── wrapper.py
│           │       │   │   ├── certifi
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __main__.py
│           │       │   │   │   ├── cacert.pem
│           │       │   │   │   └── core.py
│           │       │   │   ├── chardet
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── big5freq.py
│           │       │   │   │   ├── big5prober.py
│           │       │   │   │   ├── chardistribution.py
│           │       │   │   │   ├── charsetgroupprober.py
│           │       │   │   │   ├── charsetprober.py
│           │       │   │   │   ├── cli
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   └── chardetect.py
│           │       │   │   │   ├── codingstatemachine.py
│           │       │   │   │   ├── compat.py
│           │       │   │   │   ├── cp949prober.py
│           │       │   │   │   ├── enums.py
│           │       │   │   │   ├── escprober.py
│           │       │   │   │   ├── escsm.py
│           │       │   │   │   ├── eucjpprober.py
│           │       │   │   │   ├── euckrfreq.py
│           │       │   │   │   ├── euckrprober.py
│           │       │   │   │   ├── euctwfreq.py
│           │       │   │   │   ├── euctwprober.py
│           │       │   │   │   ├── gb2312freq.py
│           │       │   │   │   ├── gb2312prober.py
│           │       │   │   │   ├── hebrewprober.py
│           │       │   │   │   ├── jisfreq.py
│           │       │   │   │   ├── jpcntx.py
│           │       │   │   │   ├── langbulgarianmodel.py
│           │       │   │   │   ├── langgreekmodel.py
│           │       │   │   │   ├── langhebrewmodel.py
│           │       │   │   │   ├── langhungarianmodel.py
│           │       │   │   │   ├── langrussianmodel.py
│           │       │   │   │   ├── langthaimodel.py
│           │       │   │   │   ├── langturkishmodel.py
│           │       │   │   │   ├── latin1prober.py
│           │       │   │   │   ├── mbcharsetprober.py
│           │       │   │   │   ├── mbcsgroupprober.py
│           │       │   │   │   ├── mbcssm.py
│           │       │   │   │   ├── metadata
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   └── languages.py
│           │       │   │   │   ├── sbcharsetprober.py
│           │       │   │   │   ├── sbcsgroupprober.py
│           │       │   │   │   ├── sjisprober.py
│           │       │   │   │   ├── universaldetector.py
│           │       │   │   │   ├── utf8prober.py
│           │       │   │   │   └── version.py
│           │       │   │   ├── colorama
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── ansi.py
│           │       │   │   │   ├── ansitowin32.py
│           │       │   │   │   ├── initialise.py
│           │       │   │   │   ├── win32.py
│           │       │   │   │   └── winterm.py
│           │       │   │   ├── distlib
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── _backport
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   ├── misc.py
│           │       │   │   │   │   ├── shutil.py
│           │       │   │   │   │   ├── sysconfig.cfg
│           │       │   │   │   │   ├── sysconfig.py
│           │       │   │   │   │   └── tarfile.py
│           │       │   │   │   ├── compat.py
│           │       │   │   │   ├── database.py
│           │       │   │   │   ├── index.py
│           │       │   │   │   ├── locators.py
│           │       │   │   │   ├── manifest.py
│           │       │   │   │   ├── markers.py
│           │       │   │   │   ├── metadata.py
│           │       │   │   │   ├── resources.py
│           │       │   │   │   ├── scripts.py
│           │       │   │   │   ├── t32.exe
│           │       │   │   │   ├── t64-arm.exe
│           │       │   │   │   ├── t64.exe
│           │       │   │   │   ├── util.py
│           │       │   │   │   ├── version.py
│           │       │   │   │   ├── w32.exe
│           │       │   │   │   ├── w64-arm.exe
│           │       │   │   │   ├── w64.exe
│           │       │   │   │   └── wheel.py
│           │       │   │   ├── distro.py
│           │       │   │   ├── html5lib
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── _ihatexml.py
│           │       │   │   │   ├── _inputstream.py
│           │       │   │   │   ├── _tokenizer.py
│           │       │   │   │   ├── _trie
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   ├── _base.py
│           │       │   │   │   │   └── py.py
│           │       │   │   │   ├── _utils.py
│           │       │   │   │   ├── constants.py
│           │       │   │   │   ├── filters
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   ├── alphabeticalattributes.py
│           │       │   │   │   │   ├── base.py
│           │       │   │   │   │   ├── inject_meta_charset.py
│           │       │   │   │   │   ├── lint.py
│           │       │   │   │   │   ├── optionaltags.py
│           │       │   │   │   │   ├── sanitizer.py
│           │       │   │   │   │   └── whitespace.py
│           │       │   │   │   ├── html5parser.py
│           │       │   │   │   ├── serializer.py
│           │       │   │   │   ├── treeadapters
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   ├── genshi.py
│           │       │   │   │   │   └── sax.py
│           │       │   │   │   ├── treebuilders
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   ├── base.py
│           │       │   │   │   │   ├── dom.py
│           │       │   │   │   │   ├── etree.py
│           │       │   │   │   │   └── etree_lxml.py
│           │       │   │   │   └── treewalkers
│           │       │   │   │       ├── __init__.py
│           │       │   │   │       ├── base.py
│           │       │   │   │       ├── dom.py
│           │       │   │   │       ├── etree.py
│           │       │   │   │       ├── etree_lxml.py
│           │       │   │   │       └── genshi.py
│           │       │   │   ├── idna
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── codec.py
│           │       │   │   │   ├── compat.py
│           │       │   │   │   ├── core.py
│           │       │   │   │   ├── idnadata.py
│           │       │   │   │   ├── intranges.py
│           │       │   │   │   ├── package_data.py
│           │       │   │   │   └── uts46data.py
│           │       │   │   ├── msgpack
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── _version.py
│           │       │   │   │   ├── exceptions.py
│           │       │   │   │   ├── ext.py
│           │       │   │   │   └── fallback.py
│           │       │   │   ├── packaging
│           │       │   │   │   ├── __about__.py
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── _manylinux.py
│           │       │   │   │   ├── _musllinux.py
│           │       │   │   │   ├── _structures.py
│           │       │   │   │   ├── markers.py
│           │       │   │   │   ├── requirements.py
│           │       │   │   │   ├── specifiers.py
│           │       │   │   │   ├── tags.py
│           │       │   │   │   ├── utils.py
│           │       │   │   │   └── version.py
│           │       │   │   ├── pep517
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── build.py
│           │       │   │   │   ├── check.py
│           │       │   │   │   ├── colorlog.py
│           │       │   │   │   ├── compat.py
│           │       │   │   │   ├── dirtools.py
│           │       │   │   │   ├── envbuild.py
│           │       │   │   │   ├── in_process
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   └── _in_process.py
│           │       │   │   │   ├── meta.py
│           │       │   │   │   └── wrappers.py
│           │       │   │   ├── pkg_resources
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   └── py31compat.py
│           │       │   │   ├── platformdirs
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __main__.py
│           │       │   │   │   ├── android.py
│           │       │   │   │   ├── api.py
│           │       │   │   │   ├── macos.py
│           │       │   │   │   ├── unix.py
│           │       │   │   │   ├── version.py
│           │       │   │   │   └── windows.py
│           │       │   │   ├── progress
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── bar.py
│           │       │   │   │   ├── colors.py
│           │       │   │   │   ├── counter.py
│           │       │   │   │   └── spinner.py
│           │       │   │   ├── pyparsing.py
│           │       │   │   ├── requests
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __version__.py
│           │       │   │   │   ├── _internal_utils.py
│           │       │   │   │   ├── adapters.py
│           │       │   │   │   ├── api.py
│           │       │   │   │   ├── auth.py
│           │       │   │   │   ├── certs.py
│           │       │   │   │   ├── compat.py
│           │       │   │   │   ├── cookies.py
│           │       │   │   │   ├── exceptions.py
│           │       │   │   │   ├── help.py
│           │       │   │   │   ├── hooks.py
│           │       │   │   │   ├── models.py
│           │       │   │   │   ├── packages.py
│           │       │   │   │   ├── sessions.py
│           │       │   │   │   ├── status_codes.py
│           │       │   │   │   ├── structures.py
│           │       │   │   │   └── utils.py
│           │       │   │   ├── resolvelib
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── compat
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   └── collections_abc.py
│           │       │   │   │   ├── providers.py
│           │       │   │   │   ├── reporters.py
│           │       │   │   │   ├── resolvers.py
│           │       │   │   │   └── structs.py
│           │       │   │   ├── six.py
│           │       │   │   ├── tenacity
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── _asyncio.py
│           │       │   │   │   ├── _utils.py
│           │       │   │   │   ├── after.py
│           │       │   │   │   ├── before.py
│           │       │   │   │   ├── before_sleep.py
│           │       │   │   │   ├── nap.py
│           │       │   │   │   ├── retry.py
│           │       │   │   │   ├── stop.py
│           │       │   │   │   ├── tornadoweb.py
│           │       │   │   │   └── wait.py
│           │       │   │   ├── tomli
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── _parser.py
│           │       │   │   │   └── _re.py
│           │       │   │   ├── urllib3
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── _collections.py
│           │       │   │   │   ├── _version.py
│           │       │   │   │   ├── connection.py
│           │       │   │   │   ├── connectionpool.py
│           │       │   │   │   ├── contrib
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   ├── _appengine_environ.py
│           │       │   │   │   │   ├── _securetransport
│           │       │   │   │   │   │   ├── __init__.py
│           │       │   │   │   │   │   ├── bindings.py
│           │       │   │   │   │   │   └── low_level.py
│           │       │   │   │   │   ├── appengine.py
│           │       │   │   │   │   ├── ntlmpool.py
│           │       │   │   │   │   ├── pyopenssl.py
│           │       │   │   │   │   ├── securetransport.py
│           │       │   │   │   │   └── socks.py
│           │       │   │   │   ├── exceptions.py
│           │       │   │   │   ├── fields.py
│           │       │   │   │   ├── filepost.py
│           │       │   │   │   ├── packages
│           │       │   │   │   │   ├── __init__.py
│           │       │   │   │   │   ├── backports
│           │       │   │   │   │   │   ├── __init__.py
│           │       │   │   │   │   │   └── makefile.py
│           │       │   │   │   │   ├── six.py
│           │       │   │   │   │   └── ssl_match_hostname
│           │       │   │   │   │       ├── __init__.py
│           │       │   │   │   │       └── _implementation.py
│           │       │   │   │   ├── poolmanager.py
│           │       │   │   │   ├── request.py
│           │       │   │   │   ├── response.py
│           │       │   │   │   └── util
│           │       │   │   │       ├── __init__.py
│           │       │   │   │       ├── connection.py
│           │       │   │   │       ├── proxy.py
│           │       │   │   │       ├── queue.py
│           │       │   │   │       ├── request.py
│           │       │   │   │       ├── response.py
│           │       │   │   │       ├── retry.py
│           │       │   │   │       ├── ssl_.py
│           │       │   │   │       ├── ssltransport.py
│           │       │   │   │       ├── timeout.py
│           │       │   │   │       ├── url.py
│           │       │   │   │       └── wait.py
│           │       │   │   ├── vendor.txt
│           │       │   │   └── webencodings
│           │       │   │       ├── __init__.py
│           │       │   │       ├── labels.py
│           │       │   │       ├── mklabels.py
│           │       │   │       ├── tests.py
│           │       │   │       └── x_user_defined.py
│           │       │   └── py.typed
│           │       ├── pip-21.3.1.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE.txt
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   ├── entry_points.txt
│           │       │   └── top_level.txt
│           │       ├── pip-21.3.1.virtualenv
│           │       ├── pkg_resources
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   └── __init__.cpython-310.pyc
│           │       │   ├── _vendor
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── appdirs.cpython-310.pyc
│           │       │   │   │   └── pyparsing.cpython-310.pyc
│           │       │   │   ├── appdirs.py
│           │       │   │   ├── packaging
│           │       │   │   │   ├── __about__.py
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __about__.cpython-310.pyc
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── _manylinux.cpython-310.pyc
│           │       │   │   │   │   ├── _musllinux.cpython-310.pyc
│           │       │   │   │   │   ├── _structures.cpython-310.pyc
│           │       │   │   │   │   ├── markers.cpython-310.pyc
│           │       │   │   │   │   ├── requirements.cpython-310.pyc
│           │       │   │   │   │   ├── specifiers.cpython-310.pyc
│           │       │   │   │   │   ├── tags.cpython-310.pyc
│           │       │   │   │   │   ├── utils.cpython-310.pyc
│           │       │   │   │   │   └── version.cpython-310.pyc
│           │       │   │   │   ├── _manylinux.py
│           │       │   │   │   ├── _musllinux.py
│           │       │   │   │   ├── _structures.py
│           │       │   │   │   ├── markers.py
│           │       │   │   │   ├── requirements.py
│           │       │   │   │   ├── specifiers.py
│           │       │   │   │   ├── tags.py
│           │       │   │   │   ├── utils.py
│           │       │   │   │   └── version.py
│           │       │   │   └── pyparsing.py
│           │       │   ├── extern
│           │       │   │   ├── __init__.py
│           │       │   │   └── __pycache__
│           │       │   │       └── __init__.cpython-310.pyc
│           │       │   └── tests
│           │       │       └── data
│           │       │           └── my-test-package-source
│           │       │               └── setup.py
│           │       ├── pluggy
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _callers.cpython-310.pyc
│           │       │   │   ├── _hooks.cpython-310.pyc
│           │       │   │   ├── _manager.cpython-310.pyc
│           │       │   │   ├── _result.cpython-310.pyc
│           │       │   │   ├── _tracing.cpython-310.pyc
│           │       │   │   └── _version.cpython-310.pyc
│           │       │   ├── _callers.py
│           │       │   ├── _hooks.py
│           │       │   ├── _manager.py
│           │       │   ├── _result.py
│           │       │   ├── _tracing.py
│           │       │   └── _version.py
│           │       ├── pluggy-1.0.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── proto
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _file_info.cpython-310.pyc
│           │       │   │   ├── _package_info.cpython-310.pyc
│           │       │   │   ├── datetime_helpers.cpython-310.pyc
│           │       │   │   ├── enums.cpython-310.pyc
│           │       │   │   ├── fields.cpython-310.pyc
│           │       │   │   ├── message.cpython-310.pyc
│           │       │   │   ├── modules.cpython-310.pyc
│           │       │   │   ├── primitives.cpython-310.pyc
│           │       │   │   └── utils.cpython-310.pyc
│           │       │   ├── _file_info.py
│           │       │   ├── _package_info.py
│           │       │   ├── datetime_helpers.py
│           │       │   ├── enums.py
│           │       │   ├── fields.py
│           │       │   ├── marshal
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── compat.cpython-310.pyc
│           │       │   │   │   └── marshal.cpython-310.pyc
│           │       │   │   ├── collections
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── maps.cpython-310.pyc
│           │       │   │   │   │   └── repeated.cpython-310.pyc
│           │       │   │   │   ├── maps.py
│           │       │   │   │   └── repeated.py
│           │       │   │   ├── compat.py
│           │       │   │   ├── marshal.py
│           │       │   │   └── rules
│           │       │   │       ├── __init__.py
│           │       │   │       ├── __pycache__
│           │       │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │       │   ├── bytes.cpython-310.pyc
│           │       │   │       │   ├── dates.cpython-310.pyc
│           │       │   │       │   ├── enums.cpython-310.pyc
│           │       │   │       │   ├── field_mask.cpython-310.pyc
│           │       │   │       │   ├── message.cpython-310.pyc
│           │       │   │       │   ├── stringy_numbers.cpython-310.pyc
│           │       │   │       │   ├── struct.cpython-310.pyc
│           │       │   │       │   └── wrappers.cpython-310.pyc
│           │       │   │       ├── bytes.py
│           │       │   │       ├── dates.py
│           │       │   │       ├── enums.py
│           │       │   │       ├── field_mask.py
│           │       │   │       ├── message.py
│           │       │   │       ├── stringy_numbers.py
│           │       │   │       ├── struct.py
│           │       │   │       └── wrappers.py
│           │       │   ├── message.py
│           │       │   ├── modules.py
│           │       │   ├── primitives.py
│           │       │   └── utils.py
│           │       ├── proto_plus-1.22.1.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── protobuf-4.21.6.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   └── WHEEL
│           │       ├── py
│           │       │   ├── __init__.py
│           │       │   ├── __init__.pyi
│           │       │   ├── __metainfo.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── __metainfo.cpython-310.pyc
│           │       │   │   ├── _builtin.cpython-310.pyc
│           │       │   │   ├── _error.cpython-310.pyc
│           │       │   │   ├── _std.cpython-310.pyc
│           │       │   │   ├── _version.cpython-310.pyc
│           │       │   │   ├── _xmlgen.cpython-310.pyc
│           │       │   │   └── test.cpython-310.pyc
│           │       │   ├── _builtin.py
│           │       │   ├── _code
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── _assertionnew.cpython-310.pyc
│           │       │   │   │   ├── _assertionold.cpython-310.pyc
│           │       │   │   │   ├── _py2traceback.cpython-310.pyc
│           │       │   │   │   ├── assertion.cpython-310.pyc
│           │       │   │   │   ├── code.cpython-310.pyc
│           │       │   │   │   └── source.cpython-310.pyc
│           │       │   │   ├── _assertionnew.py
│           │       │   │   ├── _assertionold.py
│           │       │   │   ├── _py2traceback.py
│           │       │   │   ├── assertion.py
│           │       │   │   ├── code.py
│           │       │   │   └── source.py
│           │       │   ├── _error.py
│           │       │   ├── _io
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── capture.cpython-310.pyc
│           │       │   │   │   ├── saferepr.cpython-310.pyc
│           │       │   │   │   └── terminalwriter.cpython-310.pyc
│           │       │   │   ├── capture.py
│           │       │   │   ├── saferepr.py
│           │       │   │   └── terminalwriter.py
│           │       │   ├── _log
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── log.cpython-310.pyc
│           │       │   │   │   └── warning.cpython-310.pyc
│           │       │   │   ├── log.py
│           │       │   │   └── warning.py
│           │       │   ├── _path
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── cacheutil.cpython-310.pyc
│           │       │   │   │   ├── common.cpython-310.pyc
│           │       │   │   │   ├── local.cpython-310.pyc
│           │       │   │   │   ├── svnurl.cpython-310.pyc
│           │       │   │   │   └── svnwc.cpython-310.pyc
│           │       │   │   ├── cacheutil.py
│           │       │   │   ├── common.py
│           │       │   │   ├── local.py
│           │       │   │   ├── svnurl.py
│           │       │   │   └── svnwc.py
│           │       │   ├── _process
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── cmdexec.cpython-310.pyc
│           │       │   │   │   ├── forkedfunc.cpython-310.pyc
│           │       │   │   │   └── killproc.cpython-310.pyc
│           │       │   │   ├── cmdexec.py
│           │       │   │   ├── forkedfunc.py
│           │       │   │   └── killproc.py
│           │       │   ├── _std.py
│           │       │   ├── _vendored_packages
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   └── __init__.cpython-310.pyc
│           │       │   │   ├── apipkg
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   └── version.cpython-310.pyc
│           │       │   │   │   └── version.py
│           │       │   │   ├── apipkg-2.0.0.dist-info
│           │       │   │   │   ├── INSTALLER
│           │       │   │   │   ├── LICENSE
│           │       │   │   │   ├── METADATA
│           │       │   │   │   ├── RECORD
│           │       │   │   │   ├── REQUESTED
│           │       │   │   │   ├── WHEEL
│           │       │   │   │   └── top_level.txt
│           │       │   │   ├── iniconfig
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __init__.pyi
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   └── __init__.cpython-310.pyc
│           │       │   │   │   └── py.typed
│           │       │   │   └── iniconfig-1.1.1.dist-info
│           │       │   │       ├── INSTALLER
│           │       │   │       ├── LICENSE
│           │       │   │       ├── METADATA
│           │       │   │       ├── RECORD
│           │       │   │       ├── REQUESTED
│           │       │   │       ├── WHEEL
│           │       │   │       └── top_level.txt
│           │       │   ├── _version.py
│           │       │   ├── _xmlgen.py
│           │       │   ├── error.pyi
│           │       │   ├── iniconfig.pyi
│           │       │   ├── io.pyi
│           │       │   ├── path.pyi
│           │       │   ├── py.typed
│           │       │   ├── test.py
│           │       │   └── xml.pyi
│           │       ├── py-1.11.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── pyasn1
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── debug.cpython-310.pyc
│           │       │   │   └── error.cpython-310.pyc
│           │       │   ├── codec
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   └── __init__.cpython-310.pyc
│           │       │   │   ├── ber
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── decoder.cpython-310.pyc
│           │       │   │   │   │   ├── encoder.cpython-310.pyc
│           │       │   │   │   │   └── eoo.cpython-310.pyc
│           │       │   │   │   ├── decoder.py
│           │       │   │   │   ├── encoder.py
│           │       │   │   │   └── eoo.py
│           │       │   │   ├── cer
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── decoder.cpython-310.pyc
│           │       │   │   │   │   └── encoder.cpython-310.pyc
│           │       │   │   │   ├── decoder.py
│           │       │   │   │   └── encoder.py
│           │       │   │   ├── der
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── decoder.cpython-310.pyc
│           │       │   │   │   │   └── encoder.cpython-310.pyc
│           │       │   │   │   ├── decoder.py
│           │       │   │   │   └── encoder.py
│           │       │   │   └── native
│           │       │   │       ├── __init__.py
│           │       │   │       ├── __pycache__
│           │       │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │       │   ├── decoder.cpython-310.pyc
│           │       │   │       │   └── encoder.cpython-310.pyc
│           │       │   │       ├── decoder.py
│           │       │   │       └── encoder.py
│           │       │   ├── compat
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── binary.cpython-310.pyc
│           │       │   │   │   ├── calling.cpython-310.pyc
│           │       │   │   │   ├── dateandtime.cpython-310.pyc
│           │       │   │   │   ├── integer.cpython-310.pyc
│           │       │   │   │   ├── octets.cpython-310.pyc
│           │       │   │   │   └── string.cpython-310.pyc
│           │       │   │   ├── binary.py
│           │       │   │   ├── calling.py
│           │       │   │   ├── dateandtime.py
│           │       │   │   ├── integer.py
│           │       │   │   ├── octets.py
│           │       │   │   └── string.py
│           │       │   ├── debug.py
│           │       │   ├── error.py
│           │       │   └── type
│           │       │       ├── __init__.py
│           │       │       ├── __pycache__
│           │       │       │   ├── __init__.cpython-310.pyc
│           │       │       │   ├── base.cpython-310.pyc
│           │       │       │   ├── char.cpython-310.pyc
│           │       │       │   ├── constraint.cpython-310.pyc
│           │       │       │   ├── error.cpython-310.pyc
│           │       │       │   ├── namedtype.cpython-310.pyc
│           │       │       │   ├── namedval.cpython-310.pyc
│           │       │       │   ├── opentype.cpython-310.pyc
│           │       │       │   ├── tag.cpython-310.pyc
│           │       │       │   ├── tagmap.cpython-310.pyc
│           │       │       │   ├── univ.cpython-310.pyc
│           │       │       │   └── useful.cpython-310.pyc
│           │       │       ├── base.py
│           │       │       ├── char.py
│           │       │       ├── constraint.py
│           │       │       ├── error.py
│           │       │       ├── namedtype.py
│           │       │       ├── namedval.py
│           │       │       ├── opentype.py
│           │       │       ├── tag.py
│           │       │       ├── tagmap.py
│           │       │       ├── univ.py
│           │       │       └── useful.py
│           │       ├── pyasn1-0.4.8.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE.rst
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   ├── top_level.txt
│           │       │   └── zip-safe
│           │       ├── pyasn1_modules
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── pem.cpython-310.pyc
│           │       │   │   ├── rfc1155.cpython-310.pyc
│           │       │   │   ├── rfc1157.cpython-310.pyc
│           │       │   │   ├── rfc1901.cpython-310.pyc
│           │       │   │   ├── rfc1902.cpython-310.pyc
│           │       │   │   ├── rfc1905.cpython-310.pyc
│           │       │   │   ├── rfc2251.cpython-310.pyc
│           │       │   │   ├── rfc2314.cpython-310.pyc
│           │       │   │   ├── rfc2315.cpython-310.pyc
│           │       │   │   ├── rfc2437.cpython-310.pyc
│           │       │   │   ├── rfc2459.cpython-310.pyc
│           │       │   │   ├── rfc2511.cpython-310.pyc
│           │       │   │   ├── rfc2560.cpython-310.pyc
│           │       │   │   ├── rfc2631.cpython-310.pyc
│           │       │   │   ├── rfc2634.cpython-310.pyc
│           │       │   │   ├── rfc2985.cpython-310.pyc
│           │       │   │   ├── rfc2986.cpython-310.pyc
│           │       │   │   ├── rfc3114.cpython-310.pyc
│           │       │   │   ├── rfc3161.cpython-310.pyc
│           │       │   │   ├── rfc3274.cpython-310.pyc
│           │       │   │   ├── rfc3279.cpython-310.pyc
│           │       │   │   ├── rfc3280.cpython-310.pyc
│           │       │   │   ├── rfc3281.cpython-310.pyc
│           │       │   │   ├── rfc3412.cpython-310.pyc
│           │       │   │   ├── rfc3414.cpython-310.pyc
│           │       │   │   ├── rfc3447.cpython-310.pyc
│           │       │   │   ├── rfc3560.cpython-310.pyc
│           │       │   │   ├── rfc3565.cpython-310.pyc
│           │       │   │   ├── rfc3709.cpython-310.pyc
│           │       │   │   ├── rfc3770.cpython-310.pyc
│           │       │   │   ├── rfc3779.cpython-310.pyc
│           │       │   │   ├── rfc3852.cpython-310.pyc
│           │       │   │   ├── rfc4043.cpython-310.pyc
│           │       │   │   ├── rfc4055.cpython-310.pyc
│           │       │   │   ├── rfc4073.cpython-310.pyc
│           │       │   │   ├── rfc4108.cpython-310.pyc
│           │       │   │   ├── rfc4210.cpython-310.pyc
│           │       │   │   ├── rfc4211.cpython-310.pyc
│           │       │   │   ├── rfc4334.cpython-310.pyc
│           │       │   │   ├── rfc4985.cpython-310.pyc
│           │       │   │   ├── rfc5035.cpython-310.pyc
│           │       │   │   ├── rfc5083.cpython-310.pyc
│           │       │   │   ├── rfc5084.cpython-310.pyc
│           │       │   │   ├── rfc5208.cpython-310.pyc
│           │       │   │   ├── rfc5280.cpython-310.pyc
│           │       │   │   ├── rfc5480.cpython-310.pyc
│           │       │   │   ├── rfc5649.cpython-310.pyc
│           │       │   │   ├── rfc5652.cpython-310.pyc
│           │       │   │   ├── rfc5751.cpython-310.pyc
│           │       │   │   ├── rfc5755.cpython-310.pyc
│           │       │   │   ├── rfc5913.cpython-310.pyc
│           │       │   │   ├── rfc5914.cpython-310.pyc
│           │       │   │   ├── rfc5915.cpython-310.pyc
│           │       │   │   ├── rfc5916.cpython-310.pyc
│           │       │   │   ├── rfc5917.cpython-310.pyc
│           │       │   │   ├── rfc5924.cpython-310.pyc
│           │       │   │   ├── rfc5934.cpython-310.pyc
│           │       │   │   ├── rfc5940.cpython-310.pyc
│           │       │   │   ├── rfc5958.cpython-310.pyc
│           │       │   │   ├── rfc5990.cpython-310.pyc
│           │       │   │   ├── rfc6010.cpython-310.pyc
│           │       │   │   ├── rfc6019.cpython-310.pyc
│           │       │   │   ├── rfc6031.cpython-310.pyc
│           │       │   │   ├── rfc6032.cpython-310.pyc
│           │       │   │   ├── rfc6120.cpython-310.pyc
│           │       │   │   ├── rfc6170.cpython-310.pyc
│           │       │   │   ├── rfc6187.cpython-310.pyc
│           │       │   │   ├── rfc6210.cpython-310.pyc
│           │       │   │   ├── rfc6211.cpython-310.pyc
│           │       │   │   ├── rfc6402-1.cpython-310.pyc
│           │       │   │   ├── rfc6402.cpython-310.pyc
│           │       │   │   ├── rfc6482.cpython-310.pyc
│           │       │   │   ├── rfc6486.cpython-310.pyc
│           │       │   │   ├── rfc6487.cpython-310.pyc
│           │       │   │   ├── rfc6664.cpython-310.pyc
│           │       │   │   ├── rfc6955.cpython-310.pyc
│           │       │   │   ├── rfc6960.cpython-310.pyc
│           │       │   │   ├── rfc7030.cpython-310.pyc
│           │       │   │   ├── rfc7191.cpython-310.pyc
│           │       │   │   ├── rfc7229.cpython-310.pyc
│           │       │   │   ├── rfc7292.cpython-310.pyc
│           │       │   │   ├── rfc7296.cpython-310.pyc
│           │       │   │   ├── rfc7508.cpython-310.pyc
│           │       │   │   ├── rfc7585.cpython-310.pyc
│           │       │   │   ├── rfc7633.cpython-310.pyc
│           │       │   │   ├── rfc7773.cpython-310.pyc
│           │       │   │   ├── rfc7894-1.cpython-310.pyc
│           │       │   │   ├── rfc7894.cpython-310.pyc
│           │       │   │   ├── rfc7906.cpython-310.pyc
│           │       │   │   ├── rfc7914.cpython-310.pyc
│           │       │   │   ├── rfc8017.cpython-310.pyc
│           │       │   │   ├── rfc8018.cpython-310.pyc
│           │       │   │   ├── rfc8103.cpython-310.pyc
│           │       │   │   ├── rfc8209.cpython-310.pyc
│           │       │   │   ├── rfc8226.cpython-310.pyc
│           │       │   │   ├── rfc8358.cpython-310.pyc
│           │       │   │   ├── rfc8360.cpython-310.pyc
│           │       │   │   ├── rfc8398.cpython-310.pyc
│           │       │   │   ├── rfc8410.cpython-310.pyc
│           │       │   │   ├── rfc8418.cpython-310.pyc
│           │       │   │   ├── rfc8419.cpython-310.pyc
│           │       │   │   ├── rfc8479.cpython-310.pyc
│           │       │   │   ├── rfc8494.cpython-310.pyc
│           │       │   │   ├── rfc8520.cpython-310.pyc
│           │       │   │   ├── rfc8619.cpython-310.pyc
│           │       │   │   └── rfc8649.cpython-310.pyc
│           │       │   ├── pem.py
│           │       │   ├── rfc1155.py
│           │       │   ├── rfc1157.py
│           │       │   ├── rfc1901.py
│           │       │   ├── rfc1902.py
│           │       │   ├── rfc1905.py
│           │       │   ├── rfc2251.py
│           │       │   ├── rfc2314.py
│           │       │   ├── rfc2315.py
│           │       │   ├── rfc2437.py
│           │       │   ├── rfc2459.py
│           │       │   ├── rfc2511.py
│           │       │   ├── rfc2560.py
│           │       │   ├── rfc2631.py
│           │       │   ├── rfc2634.py
│           │       │   ├── rfc2985.py
│           │       │   ├── rfc2986.py
│           │       │   ├── rfc3114.py
│           │       │   ├── rfc3161.py
│           │       │   ├── rfc3274.py
│           │       │   ├── rfc3279.py
│           │       │   ├── rfc3280.py
│           │       │   ├── rfc3281.py
│           │       │   ├── rfc3412.py
│           │       │   ├── rfc3414.py
│           │       │   ├── rfc3447.py
│           │       │   ├── rfc3560.py
│           │       │   ├── rfc3565.py
│           │       │   ├── rfc3709.py
│           │       │   ├── rfc3770.py
│           │       │   ├── rfc3779.py
│           │       │   ├── rfc3852.py
│           │       │   ├── rfc4043.py
│           │       │   ├── rfc4055.py
│           │       │   ├── rfc4073.py
│           │       │   ├── rfc4108.py
│           │       │   ├── rfc4210.py
│           │       │   ├── rfc4211.py
│           │       │   ├── rfc4334.py
│           │       │   ├── rfc4985.py
│           │       │   ├── rfc5035.py
│           │       │   ├── rfc5083.py
│           │       │   ├── rfc5084.py
│           │       │   ├── rfc5208.py
│           │       │   ├── rfc5280.py
│           │       │   ├── rfc5480.py
│           │       │   ├── rfc5649.py
│           │       │   ├── rfc5652.py
│           │       │   ├── rfc5751.py
│           │       │   ├── rfc5755.py
│           │       │   ├── rfc5913.py
│           │       │   ├── rfc5914.py
│           │       │   ├── rfc5915.py
│           │       │   ├── rfc5916.py
│           │       │   ├── rfc5917.py
│           │       │   ├── rfc5924.py
│           │       │   ├── rfc5934.py
│           │       │   ├── rfc5940.py
│           │       │   ├── rfc5958.py
│           │       │   ├── rfc5990.py
│           │       │   ├── rfc6010.py
│           │       │   ├── rfc6019.py
│           │       │   ├── rfc6031.py
│           │       │   ├── rfc6032.py
│           │       │   ├── rfc6120.py
│           │       │   ├── rfc6170.py
│           │       │   ├── rfc6187.py
│           │       │   ├── rfc6210.py
│           │       │   ├── rfc6211.py
│           │       │   ├── rfc6402-1.py
│           │       │   ├── rfc6402.py
│           │       │   ├── rfc6482.py
│           │       │   ├── rfc6486.py
│           │       │   ├── rfc6487.py
│           │       │   ├── rfc6664.py
│           │       │   ├── rfc6955.py
│           │       │   ├── rfc6960.py
│           │       │   ├── rfc7030.py
│           │       │   ├── rfc7191.py
│           │       │   ├── rfc7229.py
│           │       │   ├── rfc7292.py
│           │       │   ├── rfc7296.py
│           │       │   ├── rfc7508.py
│           │       │   ├── rfc7585.py
│           │       │   ├── rfc7633.py
│           │       │   ├── rfc7773.py
│           │       │   ├── rfc7894-1.py
│           │       │   ├── rfc7894.py
│           │       │   ├── rfc7906.py
│           │       │   ├── rfc7914.py
│           │       │   ├── rfc8017.py
│           │       │   ├── rfc8018.py
│           │       │   ├── rfc8103.py
│           │       │   ├── rfc8209.py
│           │       │   ├── rfc8226.py
│           │       │   ├── rfc8358.py
│           │       │   ├── rfc8360.py
│           │       │   ├── rfc8398.py
│           │       │   ├── rfc8410.py
│           │       │   ├── rfc8418.py
│           │       │   ├── rfc8419.py
│           │       │   ├── rfc8479.py
│           │       │   ├── rfc8494.py
│           │       │   ├── rfc8520.py
│           │       │   ├── rfc8619.py
│           │       │   └── rfc8649.py
│           │       ├── pyasn1_modules-0.2.8.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE.txt
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   ├── top_level.txt
│           │       │   └── zip-safe
│           │       ├── pydantic
│           │       │   ├── __init__.cp310-win_amd64.pyd
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _hypothesis_plugin.cpython-310.pyc
│           │       │   │   ├── annotated_types.cpython-310.pyc
│           │       │   │   ├── class_validators.cpython-310.pyc
│           │       │   │   ├── color.cpython-310.pyc
│           │       │   │   ├── config.cpython-310.pyc
│           │       │   │   ├── dataclasses.cpython-310.pyc
│           │       │   │   ├── datetime_parse.cpython-310.pyc
│           │       │   │   ├── decorator.cpython-310.pyc
│           │       │   │   ├── env_settings.cpython-310.pyc
│           │       │   │   ├── error_wrappers.cpython-310.pyc
│           │       │   │   ├── errors.cpython-310.pyc
│           │       │   │   ├── fields.cpython-310.pyc
│           │       │   │   ├── generics.cpython-310.pyc
│           │       │   │   ├── json.cpython-310.pyc
│           │       │   │   ├── main.cpython-310.pyc
│           │       │   │   ├── mypy.cpython-310.pyc
│           │       │   │   ├── networks.cpython-310.pyc
│           │       │   │   ├── parse.cpython-310.pyc
│           │       │   │   ├── schema.cpython-310.pyc
│           │       │   │   ├── tools.cpython-310.pyc
│           │       │   │   ├── types.cpython-310.pyc
│           │       │   │   ├── typing.cpython-310.pyc
│           │       │   │   ├── utils.cpython-310.pyc
│           │       │   │   ├── validators.cpython-310.pyc
│           │       │   │   └── version.cpython-310.pyc
│           │       │   ├── _hypothesis_plugin.cp310-win_amd64.pyd
│           │       │   ├── _hypothesis_plugin.py
│           │       │   ├── annotated_types.cp310-win_amd64.pyd
│           │       │   ├── annotated_types.py
│           │       │   ├── class_validators.cp310-win_amd64.pyd
│           │       │   ├── class_validators.py
│           │       │   ├── color.cp310-win_amd64.pyd
│           │       │   ├── color.py
│           │       │   ├── config.cp310-win_amd64.pyd
│           │       │   ├── config.py
│           │       │   ├── dataclasses.cp310-win_amd64.pyd
│           │       │   ├── dataclasses.py
│           │       │   ├── datetime_parse.cp310-win_amd64.pyd
│           │       │   ├── datetime_parse.py
│           │       │   ├── decorator.cp310-win_amd64.pyd
│           │       │   ├── decorator.py
│           │       │   ├── env_settings.cp310-win_amd64.pyd
│           │       │   ├── env_settings.py
│           │       │   ├── error_wrappers.cp310-win_amd64.pyd
│           │       │   ├── error_wrappers.py
│           │       │   ├── errors.cp310-win_amd64.pyd
│           │       │   ├── errors.py
│           │       │   ├── fields.cp310-win_amd64.pyd
│           │       │   ├── fields.py
│           │       │   ├── generics.py
│           │       │   ├── json.cp310-win_amd64.pyd
│           │       │   ├── json.py
│           │       │   ├── main.cp310-win_amd64.pyd
│           │       │   ├── main.py
│           │       │   ├── mypy.cp310-win_amd64.pyd
│           │       │   ├── mypy.py
│           │       │   ├── networks.cp310-win_amd64.pyd
│           │       │   ├── networks.py
│           │       │   ├── parse.cp310-win_amd64.pyd
│           │       │   ├── parse.py
│           │       │   ├── py.typed
│           │       │   ├── schema.cp310-win_amd64.pyd
│           │       │   ├── schema.py
│           │       │   ├── tools.cp310-win_amd64.pyd
│           │       │   ├── tools.py
│           │       │   ├── types.cp310-win_amd64.pyd
│           │       │   ├── types.py
│           │       │   ├── typing.cp310-win_amd64.pyd
│           │       │   ├── typing.py
│           │       │   ├── utils.cp310-win_amd64.pyd
│           │       │   ├── utils.py
│           │       │   ├── validators.cp310-win_amd64.pyd
│           │       │   ├── validators.py
│           │       │   ├── version.cp310-win_amd64.pyd
│           │       │   └── version.py
│           │       ├── pydantic-1.10.2.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   ├── entry_points.txt
│           │       │   └── top_level.txt
│           │       ├── pyparsing
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── actions.cpython-310.pyc
│           │       │   │   ├── common.cpython-310.pyc
│           │       │   │   ├── core.cpython-310.pyc
│           │       │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   ├── helpers.cpython-310.pyc
│           │       │   │   ├── results.cpython-310.pyc
│           │       │   │   ├── testing.cpython-310.pyc
│           │       │   │   ├── unicode.cpython-310.pyc
│           │       │   │   └── util.cpython-310.pyc
│           │       │   ├── actions.py
│           │       │   ├── common.py
│           │       │   ├── core.py
│           │       │   ├── diagram
│           │       │   │   ├── __init__.py
│           │       │   │   └── __pycache__
│           │       │   │       └── __init__.cpython-310.pyc
│           │       │   ├── exceptions.py
│           │       │   ├── helpers.py
│           │       │   ├── py.typed
│           │       │   ├── results.py
│           │       │   ├── testing.py
│           │       │   ├── unicode.py
│           │       │   └── util.py
│           │       ├── pyparsing-3.0.9.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   └── WHEEL
│           │       ├── pytest
│           │       │   ├── __init__.py
│           │       │   ├── __main__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   └── __main__.cpython-310.pyc
│           │       │   └── py.typed
│           │       ├── pytest-7.1.3.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   ├── entry_points.txt
│           │       │   └── top_level.txt
│           │       ├── python_dotenv-0.21.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   ├── entry_points.txt
│           │       │   └── top_level.txt
│           │       ├── python_multipart-0.0.5.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE.txt
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── requests
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── __version__.cpython-310.pyc
│           │       │   │   ├── _internal_utils.cpython-310.pyc
│           │       │   │   ├── adapters.cpython-310.pyc
│           │       │   │   ├── api.cpython-310.pyc
│           │       │   │   ├── auth.cpython-310.pyc
│           │       │   │   ├── certs.cpython-310.pyc
│           │       │   │   ├── compat.cpython-310.pyc
│           │       │   │   ├── cookies.cpython-310.pyc
│           │       │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   ├── help.cpython-310.pyc
│           │       │   │   ├── hooks.cpython-310.pyc
│           │       │   │   ├── models.cpython-310.pyc
│           │       │   │   ├── packages.cpython-310.pyc
│           │       │   │   ├── sessions.cpython-310.pyc
│           │       │   │   ├── status_codes.cpython-310.pyc
│           │       │   │   ├── structures.cpython-310.pyc
│           │       │   │   └── utils.cpython-310.pyc
│           │       │   ├── __version__.py
│           │       │   ├── _internal_utils.py
│           │       │   ├── adapters.py
│           │       │   ├── api.py
│           │       │   ├── auth.py
│           │       │   ├── certs.py
│           │       │   ├── compat.py
│           │       │   ├── cookies.py
│           │       │   ├── exceptions.py
│           │       │   ├── help.py
│           │       │   ├── hooks.py
│           │       │   ├── models.py
│           │       │   ├── packages.py
│           │       │   ├── sessions.py
│           │       │   ├── status_codes.py
│           │       │   ├── structures.py
│           │       │   └── utils.py
│           │       ├── requests-2.28.1.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── rfc3986
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _mixin.cpython-310.pyc
│           │       │   │   ├── abnf_regexp.cpython-310.pyc
│           │       │   │   ├── api.cpython-310.pyc
│           │       │   │   ├── builder.cpython-310.pyc
│           │       │   │   ├── compat.cpython-310.pyc
│           │       │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   ├── iri.cpython-310.pyc
│           │       │   │   ├── misc.cpython-310.pyc
│           │       │   │   ├── normalizers.cpython-310.pyc
│           │       │   │   ├── parseresult.cpython-310.pyc
│           │       │   │   ├── uri.cpython-310.pyc
│           │       │   │   └── validators.cpython-310.pyc
│           │       │   ├── _mixin.py
│           │       │   ├── abnf_regexp.py
│           │       │   ├── api.py
│           │       │   ├── builder.py
│           │       │   ├── compat.py
│           │       │   ├── exceptions.py
│           │       │   ├── iri.py
│           │       │   ├── misc.py
│           │       │   ├── normalizers.py
│           │       │   ├── parseresult.py
│           │       │   ├── uri.py
│           │       │   └── validators.py
│           │       ├── rfc3986-1.5.0.dist-info
│           │       │   ├── AUTHORS.rst
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── rsa
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── asn1.cpython-310.pyc
│           │       │   │   ├── cli.cpython-310.pyc
│           │       │   │   ├── common.cpython-310.pyc
│           │       │   │   ├── core.cpython-310.pyc
│           │       │   │   ├── key.cpython-310.pyc
│           │       │   │   ├── parallel.cpython-310.pyc
│           │       │   │   ├── pem.cpython-310.pyc
│           │       │   │   ├── pkcs1.cpython-310.pyc
│           │       │   │   ├── pkcs1_v2.cpython-310.pyc
│           │       │   │   ├── prime.cpython-310.pyc
│           │       │   │   ├── randnum.cpython-310.pyc
│           │       │   │   ├── transform.cpython-310.pyc
│           │       │   │   └── util.cpython-310.pyc
│           │       │   ├── asn1.py
│           │       │   ├── cli.py
│           │       │   ├── common.py
│           │       │   ├── core.py
│           │       │   ├── key.py
│           │       │   ├── parallel.py
│           │       │   ├── pem.py
│           │       │   ├── pkcs1.py
│           │       │   ├── pkcs1_v2.py
│           │       │   ├── prime.py
│           │       │   ├── py.typed
│           │       │   ├── randnum.py
│           │       │   ├── transform.py
│           │       │   └── util.py
│           │       ├── rsa-4.9.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── entry_points.txt
│           │       ├── setuptools
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _deprecation_warning.cpython-310.pyc
│           │       │   │   ├── _imp.cpython-310.pyc
│           │       │   │   ├── config.cpython-310.pyc
│           │       │   │   ├── depends.cpython-310.pyc
│           │       │   │   ├── dist.cpython-310.pyc
│           │       │   │   ├── extension.cpython-310.pyc
│           │       │   │   ├── logging.cpython-310.pyc
│           │       │   │   ├── monkey.cpython-310.pyc
│           │       │   │   ├── msvc.cpython-310.pyc
│           │       │   │   ├── py34compat.cpython-310.pyc
│           │       │   │   ├── version.cpython-310.pyc
│           │       │   │   └── windows_support.cpython-310.pyc
│           │       │   ├── _deprecation_warning.py
│           │       │   ├── _distutils
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── _msvccompiler.cpython-310.pyc
│           │       │   │   │   ├── archive_util.cpython-310.pyc
│           │       │   │   │   ├── ccompiler.cpython-310.pyc
│           │       │   │   │   ├── cmd.cpython-310.pyc
│           │       │   │   │   ├── config.cpython-310.pyc
│           │       │   │   │   ├── core.cpython-310.pyc
│           │       │   │   │   ├── debug.cpython-310.pyc
│           │       │   │   │   ├── dep_util.cpython-310.pyc
│           │       │   │   │   ├── dir_util.cpython-310.pyc
│           │       │   │   │   ├── dist.cpython-310.pyc
│           │       │   │   │   ├── errors.cpython-310.pyc
│           │       │   │   │   ├── extension.cpython-310.pyc
│           │       │   │   │   ├── fancy_getopt.cpython-310.pyc
│           │       │   │   │   ├── file_util.cpython-310.pyc
│           │       │   │   │   ├── filelist.cpython-310.pyc
│           │       │   │   │   ├── log.cpython-310.pyc
│           │       │   │   │   ├── msvc9compiler.cpython-310.pyc
│           │       │   │   │   ├── py35compat.cpython-310.pyc
│           │       │   │   │   ├── spawn.cpython-310.pyc
│           │       │   │   │   └── util.cpython-310.pyc
│           │       │   │   ├── _msvccompiler.py
│           │       │   │   ├── archive_util.py
│           │       │   │   ├── bcppcompiler.py
│           │       │   │   ├── ccompiler.py
│           │       │   │   ├── cmd.py
│           │       │   │   ├── command
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   └── bdist.cpython-310.pyc
│           │       │   │   │   ├── bdist.py
│           │       │   │   │   ├── bdist_dumb.py
│           │       │   │   │   ├── bdist_msi.py
│           │       │   │   │   ├── bdist_rpm.py
│           │       │   │   │   ├── bdist_wininst.py
│           │       │   │   │   ├── build.py
│           │       │   │   │   ├── build_clib.py
│           │       │   │   │   ├── build_ext.py
│           │       │   │   │   ├── build_py.py
│           │       │   │   │   ├── build_scripts.py
│           │       │   │   │   ├── check.py
│           │       │   │   │   ├── clean.py
│           │       │   │   │   ├── config.py
│           │       │   │   │   ├── install.py
│           │       │   │   │   ├── install_data.py
│           │       │   │   │   ├── install_egg_info.py
│           │       │   │   │   ├── install_headers.py
│           │       │   │   │   ├── install_lib.py
│           │       │   │   │   ├── install_scripts.py
│           │       │   │   │   ├── py37compat.py
│           │       │   │   │   ├── register.py
│           │       │   │   │   ├── sdist.py
│           │       │   │   │   └── upload.py
│           │       │   │   ├── config.py
│           │       │   │   ├── core.py
│           │       │   │   ├── cygwinccompiler.py
│           │       │   │   ├── debug.py
│           │       │   │   ├── dep_util.py
│           │       │   │   ├── dir_util.py
│           │       │   │   ├── dist.py
│           │       │   │   ├── errors.py
│           │       │   │   ├── extension.py
│           │       │   │   ├── fancy_getopt.py
│           │       │   │   ├── file_util.py
│           │       │   │   ├── filelist.py
│           │       │   │   ├── log.py
│           │       │   │   ├── msvc9compiler.py
│           │       │   │   ├── msvccompiler.py
│           │       │   │   ├── py35compat.py
│           │       │   │   ├── py38compat.py
│           │       │   │   ├── spawn.py
│           │       │   │   ├── sysconfig.py
│           │       │   │   ├── text_file.py
│           │       │   │   ├── unixccompiler.py
│           │       │   │   ├── util.py
│           │       │   │   ├── version.py
│           │       │   │   └── versionpredicate.py
│           │       │   ├── _imp.py
│           │       │   ├── _vendor
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   └── ordered_set.cpython-310.pyc
│           │       │   │   ├── more_itertools
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── more.cpython-310.pyc
│           │       │   │   │   │   └── recipes.cpython-310.pyc
│           │       │   │   │   ├── more.py
│           │       │   │   │   └── recipes.py
│           │       │   │   ├── ordered_set.py
│           │       │   │   ├── packaging
│           │       │   │   │   ├── __about__.py
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __about__.cpython-310.pyc
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── _manylinux.cpython-310.pyc
│           │       │   │   │   │   ├── _musllinux.cpython-310.pyc
│           │       │   │   │   │   ├── _structures.cpython-310.pyc
│           │       │   │   │   │   ├── specifiers.cpython-310.pyc
│           │       │   │   │   │   ├── tags.cpython-310.pyc
│           │       │   │   │   │   ├── utils.cpython-310.pyc
│           │       │   │   │   │   └── version.cpython-310.pyc
│           │       │   │   │   ├── _manylinux.py
│           │       │   │   │   ├── _musllinux.py
│           │       │   │   │   ├── _structures.py
│           │       │   │   │   ├── markers.py
│           │       │   │   │   ├── requirements.py
│           │       │   │   │   ├── specifiers.py
│           │       │   │   │   ├── tags.py
│           │       │   │   │   ├── utils.py
│           │       │   │   │   └── version.py
│           │       │   │   └── pyparsing.py
│           │       │   ├── archive_util.py
│           │       │   ├── build_meta.py
│           │       │   ├── cli-32.exe
│           │       │   ├── cli-64.exe
│           │       │   ├── cli-arm64.exe
│           │       │   ├── cli.exe
│           │       │   ├── command
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   └── __init__.cpython-310.pyc
│           │       │   │   ├── alias.py
│           │       │   │   ├── bdist_egg.py
│           │       │   │   ├── bdist_rpm.py
│           │       │   │   ├── build_clib.py
│           │       │   │   ├── build_ext.py
│           │       │   │   ├── build_py.py
│           │       │   │   ├── develop.py
│           │       │   │   ├── dist_info.py
│           │       │   │   ├── easy_install.py
│           │       │   │   ├── egg_info.py
│           │       │   │   ├── install.py
│           │       │   │   ├── install_egg_info.py
│           │       │   │   ├── install_lib.py
│           │       │   │   ├── install_scripts.py
│           │       │   │   ├── launcher manifest.xml
│           │       │   │   ├── py36compat.py
│           │       │   │   ├── register.py
│           │       │   │   ├── rotate.py
│           │       │   │   ├── saveopts.py
│           │       │   │   ├── sdist.py
│           │       │   │   ├── setopt.py
│           │       │   │   ├── test.py
│           │       │   │   ├── upload.py
│           │       │   │   └── upload_docs.py
│           │       │   ├── config.py
│           │       │   ├── dep_util.py
│           │       │   ├── depends.py
│           │       │   ├── dist.py
│           │       │   ├── errors.py
│           │       │   ├── extension.py
│           │       │   ├── extern
│           │       │   │   ├── __init__.py
│           │       │   │   └── __pycache__
│           │       │   │       └── __init__.cpython-310.pyc
│           │       │   ├── glob.py
│           │       │   ├── gui-32.exe
│           │       │   ├── gui-64.exe
│           │       │   ├── gui-arm64.exe
│           │       │   ├── gui.exe
│           │       │   ├── installer.py
│           │       │   ├── launch.py
│           │       │   ├── logging.py
│           │       │   ├── monkey.py
│           │       │   ├── msvc.py
│           │       │   ├── namespaces.py
│           │       │   ├── package_index.py
│           │       │   ├── py34compat.py
│           │       │   ├── sandbox.py
│           │       │   ├── script (dev).tmpl
│           │       │   ├── script.tmpl
│           │       │   ├── unicode_utils.py
│           │       │   ├── version.py
│           │       │   ├── wheel.py
│           │       │   └── windows_support.py
│           │       ├── setuptools-60.2.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   ├── entry_points.txt
│           │       │   └── top_level.txt
│           │       ├── setuptools-60.2.0.virtualenv
│           │       ├── six-1.16.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── six.py
│           │       ├── sniffio
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _impl.cpython-310.pyc
│           │       │   │   └── _version.cpython-310.pyc
│           │       │   ├── _impl.py
│           │       │   ├── _tests
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   └── test_sniffio.cpython-310.pyc
│           │       │   │   └── test_sniffio.py
│           │       │   ├── _version.py
│           │       │   └── py.typed
│           │       ├── sniffio-1.3.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── LICENSE.APACHE2
│           │       │   ├── LICENSE.MIT
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── starlette
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _compat.cpython-310.pyc
│           │       │   │   ├── _utils.cpython-310.pyc
│           │       │   │   ├── applications.cpython-310.pyc
│           │       │   │   ├── authentication.cpython-310.pyc
│           │       │   │   ├── background.cpython-310.pyc
│           │       │   │   ├── concurrency.cpython-310.pyc
│           │       │   │   ├── config.cpython-310.pyc
│           │       │   │   ├── convertors.cpython-310.pyc
│           │       │   │   ├── datastructures.cpython-310.pyc
│           │       │   │   ├── endpoints.cpython-310.pyc
│           │       │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   ├── formparsers.cpython-310.pyc
│           │       │   │   ├── requests.cpython-310.pyc
│           │       │   │   ├── responses.cpython-310.pyc
│           │       │   │   ├── routing.cpython-310.pyc
│           │       │   │   ├── schemas.cpython-310.pyc
│           │       │   │   ├── staticfiles.cpython-310.pyc
│           │       │   │   ├── status.cpython-310.pyc
│           │       │   │   ├── templating.cpython-310.pyc
│           │       │   │   ├── testclient.cpython-310.pyc
│           │       │   │   ├── types.cpython-310.pyc
│           │       │   │   └── websockets.cpython-310.pyc
│           │       │   ├── _compat.py
│           │       │   ├── _utils.py
│           │       │   ├── applications.py
│           │       │   ├── authentication.py
│           │       │   ├── background.py
│           │       │   ├── concurrency.py
│           │       │   ├── config.py
│           │       │   ├── convertors.py
│           │       │   ├── datastructures.py
│           │       │   ├── endpoints.py
│           │       │   ├── exceptions.py
│           │       │   ├── formparsers.py
│           │       │   ├── middleware
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── authentication.cpython-310.pyc
│           │       │   │   │   ├── base.cpython-310.pyc
│           │       │   │   │   ├── cors.cpython-310.pyc
│           │       │   │   │   ├── errors.cpython-310.pyc
│           │       │   │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   │   ├── gzip.cpython-310.pyc
│           │       │   │   │   ├── httpsredirect.cpython-310.pyc
│           │       │   │   │   ├── sessions.cpython-310.pyc
│           │       │   │   │   ├── trustedhost.cpython-310.pyc
│           │       │   │   │   └── wsgi.cpython-310.pyc
│           │       │   │   ├── authentication.py
│           │       │   │   ├── base.py
│           │       │   │   ├── cors.py
│           │       │   │   ├── errors.py
│           │       │   │   ├── exceptions.py
│           │       │   │   ├── gzip.py
│           │       │   │   ├── httpsredirect.py
│           │       │   │   ├── sessions.py
│           │       │   │   ├── trustedhost.py
│           │       │   │   └── wsgi.py
│           │       │   ├── py.typed
│           │       │   ├── requests.py
│           │       │   ├── responses.py
│           │       │   ├── routing.py
│           │       │   ├── schemas.py
│           │       │   ├── staticfiles.py
│           │       │   ├── status.py
│           │       │   ├── templating.py
│           │       │   ├── testclient.py
│           │       │   ├── types.py
│           │       │   └── websockets.py
│           │       ├── starlette-0.20.4.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE.md
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── tomli
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _parser.cpython-310.pyc
│           │       │   │   ├── _re.cpython-310.pyc
│           │       │   │   └── _types.cpython-310.pyc
│           │       │   ├── _parser.py
│           │       │   ├── _re.py
│           │       │   ├── _types.py
│           │       │   └── py.typed
│           │       ├── tomli-2.0.1.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   └── WHEEL
│           │       ├── typing_extensions-4.3.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   └── WHEEL
│           │       ├── typing_extensions.py
│           │       ├── urllib3
│           │       │   ├── __init__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── _collections.cpython-310.pyc
│           │       │   │   ├── _version.cpython-310.pyc
│           │       │   │   ├── connection.cpython-310.pyc
│           │       │   │   ├── connectionpool.cpython-310.pyc
│           │       │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   ├── fields.cpython-310.pyc
│           │       │   │   ├── filepost.cpython-310.pyc
│           │       │   │   ├── poolmanager.cpython-310.pyc
│           │       │   │   ├── request.cpython-310.pyc
│           │       │   │   └── response.cpython-310.pyc
│           │       │   ├── _collections.py
│           │       │   ├── _version.py
│           │       │   ├── connection.py
│           │       │   ├── connectionpool.py
│           │       │   ├── contrib
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── _appengine_environ.cpython-310.pyc
│           │       │   │   │   ├── appengine.cpython-310.pyc
│           │       │   │   │   ├── ntlmpool.cpython-310.pyc
│           │       │   │   │   ├── pyopenssl.cpython-310.pyc
│           │       │   │   │   ├── securetransport.cpython-310.pyc
│           │       │   │   │   └── socks.cpython-310.pyc
│           │       │   │   ├── _appengine_environ.py
│           │       │   │   ├── _securetransport
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── bindings.cpython-310.pyc
│           │       │   │   │   │   └── low_level.cpython-310.pyc
│           │       │   │   │   ├── bindings.py
│           │       │   │   │   └── low_level.py
│           │       │   │   ├── appengine.py
│           │       │   │   ├── ntlmpool.py
│           │       │   │   ├── pyopenssl.py
│           │       │   │   ├── securetransport.py
│           │       │   │   └── socks.py
│           │       │   ├── exceptions.py
│           │       │   ├── fields.py
│           │       │   ├── filepost.py
│           │       │   ├── packages
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   └── six.cpython-310.pyc
│           │       │   │   ├── backports
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   └── makefile.cpython-310.pyc
│           │       │   │   │   └── makefile.py
│           │       │   │   └── six.py
│           │       │   ├── poolmanager.py
│           │       │   ├── request.py
│           │       │   ├── response.py
│           │       │   └── util
│           │       │       ├── __init__.py
│           │       │       ├── __pycache__
│           │       │       │   ├── __init__.cpython-310.pyc
│           │       │       │   ├── connection.cpython-310.pyc
│           │       │       │   ├── proxy.cpython-310.pyc
│           │       │       │   ├── queue.cpython-310.pyc
│           │       │       │   ├── request.cpython-310.pyc
│           │       │       │   ├── response.cpython-310.pyc
│           │       │       │   ├── retry.cpython-310.pyc
│           │       │       │   ├── ssl_.cpython-310.pyc
│           │       │       │   ├── ssl_match_hostname.cpython-310.pyc
│           │       │       │   ├── ssltransport.cpython-310.pyc
│           │       │       │   ├── timeout.cpython-310.pyc
│           │       │       │   ├── url.cpython-310.pyc
│           │       │       │   └── wait.cpython-310.pyc
│           │       │       ├── connection.py
│           │       │       ├── proxy.py
│           │       │       ├── queue.py
│           │       │       ├── request.py
│           │       │       ├── response.py
│           │       │       ├── retry.py
│           │       │       ├── ssl_.py
│           │       │       ├── ssl_match_hostname.py
│           │       │       ├── ssltransport.py
│           │       │       ├── timeout.py
│           │       │       ├── url.py
│           │       │       └── wait.py
│           │       ├── urllib3-1.26.12.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE.txt
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── uvicorn
│           │       │   ├── __init__.py
│           │       │   ├── __main__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── __main__.cpython-310.pyc
│           │       │   │   ├── _subprocess.cpython-310.pyc
│           │       │   │   ├── _types.cpython-310.pyc
│           │       │   │   ├── config.cpython-310.pyc
│           │       │   │   ├── importer.cpython-310.pyc
│           │       │   │   ├── logging.cpython-310.pyc
│           │       │   │   ├── main.cpython-310.pyc
│           │       │   │   ├── server.cpython-310.pyc
│           │       │   │   └── workers.cpython-310.pyc
│           │       │   ├── _subprocess.py
│           │       │   ├── _types.py
│           │       │   ├── config.py
│           │       │   ├── importer.py
│           │       │   ├── lifespan
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── off.cpython-310.pyc
│           │       │   │   │   └── on.cpython-310.pyc
│           │       │   │   ├── off.py
│           │       │   │   └── on.py
│           │       │   ├── logging.py
│           │       │   ├── loops
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── asyncio.cpython-310.pyc
│           │       │   │   │   ├── auto.cpython-310.pyc
│           │       │   │   │   └── uvloop.cpython-310.pyc
│           │       │   │   ├── asyncio.py
│           │       │   │   ├── auto.py
│           │       │   │   └── uvloop.py
│           │       │   ├── main.py
│           │       │   ├── middleware
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── asgi2.cpython-310.pyc
│           │       │   │   │   ├── debug.cpython-310.pyc
│           │       │   │   │   ├── message_logger.cpython-310.pyc
│           │       │   │   │   ├── proxy_headers.cpython-310.pyc
│           │       │   │   │   └── wsgi.cpython-310.pyc
│           │       │   │   ├── asgi2.py
│           │       │   │   ├── debug.py
│           │       │   │   ├── message_logger.py
│           │       │   │   ├── proxy_headers.py
│           │       │   │   └── wsgi.py
│           │       │   ├── protocols
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   └── utils.cpython-310.pyc
│           │       │   │   ├── http
│           │       │   │   │   ├── __init__.py
│           │       │   │   │   ├── __pycache__
│           │       │   │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   │   ├── auto.cpython-310.pyc
│           │       │   │   │   │   ├── flow_control.cpython-310.pyc
│           │       │   │   │   │   ├── h11_impl.cpython-310.pyc
│           │       │   │   │   │   └── httptools_impl.cpython-310.pyc
│           │       │   │   │   ├── auto.py
│           │       │   │   │   ├── flow_control.py
│           │       │   │   │   ├── h11_impl.py
│           │       │   │   │   └── httptools_impl.py
│           │       │   │   ├── utils.py
│           │       │   │   └── websockets
│           │       │   │       ├── __init__.py
│           │       │   │       ├── __pycache__
│           │       │   │       │   ├── __init__.cpython-310.pyc
│           │       │   │       │   ├── auto.cpython-310.pyc
│           │       │   │       │   ├── websockets_impl.cpython-310.pyc
│           │       │   │       │   └── wsproto_impl.cpython-310.pyc
│           │       │   │       ├── auto.py
│           │       │   │       ├── websockets_impl.py
│           │       │   │       └── wsproto_impl.py
│           │       │   ├── server.py
│           │       │   ├── supervisors
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── basereload.cpython-310.pyc
│           │       │   │   │   ├── multiprocess.cpython-310.pyc
│           │       │   │   │   ├── statreload.cpython-310.pyc
│           │       │   │   │   ├── watchfilesreload.cpython-310.pyc
│           │       │   │   │   └── watchgodreload.cpython-310.pyc
│           │       │   │   ├── basereload.py
│           │       │   │   ├── multiprocess.py
│           │       │   │   ├── statreload.py
│           │       │   │   ├── watchfilesreload.py
│           │       │   │   └── watchgodreload.py
│           │       │   └── workers.py
│           │       ├── uvicorn-0.18.3.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   ├── entry_points.txt
│           │       │   └── licenses
│           │       │       └── LICENSE.md
│           │       ├── watchfiles
│           │       │   ├── __init__.py
│           │       │   ├── __main__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── __main__.cpython-310.pyc
│           │       │   │   ├── cli.cpython-310.pyc
│           │       │   │   ├── filters.cpython-310.pyc
│           │       │   │   ├── main.cpython-310.pyc
│           │       │   │   ├── run.cpython-310.pyc
│           │       │   │   └── version.cpython-310.pyc
│           │       │   ├── _rust_notify.pyd
│           │       │   ├── _rust_notify.pyi
│           │       │   ├── cli.py
│           │       │   ├── filters.py
│           │       │   ├── main.py
│           │       │   ├── py.typed
│           │       │   ├── run.py
│           │       │   └── version.py
│           │       ├── watchfiles-0.17.0.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   ├── entry_points.txt
│           │       │   └── license_files
│           │       │       └── LICENSE
│           │       ├── websockets
│           │       │   ├── __init__.py
│           │       │   ├── __main__.py
│           │       │   ├── __pycache__
│           │       │   │   ├── __init__.cpython-310.pyc
│           │       │   │   ├── __main__.cpython-310.pyc
│           │       │   │   ├── auth.cpython-310.pyc
│           │       │   │   ├── client.cpython-310.pyc
│           │       │   │   ├── connection.cpython-310.pyc
│           │       │   │   ├── datastructures.cpython-310.pyc
│           │       │   │   ├── exceptions.cpython-310.pyc
│           │       │   │   ├── frames.cpython-310.pyc
│           │       │   │   ├── headers.cpython-310.pyc
│           │       │   │   ├── http.cpython-310.pyc
│           │       │   │   ├── http11.cpython-310.pyc
│           │       │   │   ├── imports.cpython-310.pyc
│           │       │   │   ├── server.cpython-310.pyc
│           │       │   │   ├── streams.cpython-310.pyc
│           │       │   │   ├── typing.cpython-310.pyc
│           │       │   │   ├── uri.cpython-310.pyc
│           │       │   │   ├── utils.cpython-310.pyc
│           │       │   │   └── version.cpython-310.pyc
│           │       │   ├── auth.py
│           │       │   ├── client.py
│           │       │   ├── connection.py
│           │       │   ├── datastructures.py
│           │       │   ├── exceptions.py
│           │       │   ├── extensions
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── base.cpython-310.pyc
│           │       │   │   │   └── permessage_deflate.cpython-310.pyc
│           │       │   │   ├── base.py
│           │       │   │   └── permessage_deflate.py
│           │       │   ├── frames.py
│           │       │   ├── headers.py
│           │       │   ├── http.py
│           │       │   ├── http11.py
│           │       │   ├── imports.py
│           │       │   ├── legacy
│           │       │   │   ├── __init__.py
│           │       │   │   ├── __pycache__
│           │       │   │   │   ├── __init__.cpython-310.pyc
│           │       │   │   │   ├── auth.cpython-310.pyc
│           │       │   │   │   ├── client.cpython-310.pyc
│           │       │   │   │   ├── compatibility.cpython-310.pyc
│           │       │   │   │   ├── framing.cpython-310.pyc
│           │       │   │   │   ├── handshake.cpython-310.pyc
│           │       │   │   │   ├── http.cpython-310.pyc
│           │       │   │   │   ├── protocol.cpython-310.pyc
│           │       │   │   │   └── server.cpython-310.pyc
│           │       │   │   ├── auth.py
│           │       │   │   ├── client.py
│           │       │   │   ├── compatibility.py
│           │       │   │   ├── framing.py
│           │       │   │   ├── handshake.py
│           │       │   │   ├── http.py
│           │       │   │   ├── protocol.py
│           │       │   │   └── server.py
│           │       │   ├── py.typed
│           │       │   ├── server.py
│           │       │   ├── speedups.cp310-win_amd64.pyd
│           │       │   ├── streams.py
│           │       │   ├── typing.py
│           │       │   ├── uri.py
│           │       │   ├── utils.py
│           │       │   └── version.py
│           │       ├── websockets-10.3.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── REQUESTED
│           │       │   ├── WHEEL
│           │       │   └── top_level.txt
│           │       ├── wheel
│           │       │   ├── __init__.py
│           │       │   ├── __main__.py
│           │       │   ├── bdist_wheel.py
│           │       │   ├── cli
│           │       │   │   ├── __init__.py
│           │       │   │   ├── convert.py
│           │       │   │   ├── pack.py
│           │       │   │   └── unpack.py
│           │       │   ├── macosx_libfile.py
│           │       │   ├── metadata.py
│           │       │   ├── pkginfo.py
│           │       │   ├── util.py
│           │       │   ├── vendored
│           │       │   │   ├── __init__.py
│           │       │   │   └── packaging
│           │       │   │       ├── __init__.py
│           │       │   │       ├── _typing.py
│           │       │   │       └── tags.py
│           │       │   └── wheelfile.py
│           │       ├── wheel-0.37.1.dist-info
│           │       │   ├── INSTALLER
│           │       │   ├── LICENSE.txt
│           │       │   ├── METADATA
│           │       │   ├── RECORD
│           │       │   ├── WHEEL
│           │       │   ├── entry_points.txt
│           │       │   └── top_level.txt
│           │       ├── wheel-0.37.1.virtualenv
│           │       └── yaml
│           │           ├── __init__.py
│           │           ├── __pycache__
│           │           │   ├── __init__.cpython-310.pyc
│           │           │   ├── composer.cpython-310.pyc
│           │           │   ├── constructor.cpython-310.pyc
│           │           │   ├── cyaml.cpython-310.pyc
│           │           │   ├── dumper.cpython-310.pyc
│           │           │   ├── emitter.cpython-310.pyc
│           │           │   ├── error.cpython-310.pyc
│           │           │   ├── events.cpython-310.pyc
│           │           │   ├── loader.cpython-310.pyc
│           │           │   ├── nodes.cpython-310.pyc
│           │           │   ├── parser.cpython-310.pyc
│           │           │   ├── reader.cpython-310.pyc
│           │           │   ├── representer.cpython-310.pyc
│           │           │   ├── resolver.cpython-310.pyc
│           │           │   ├── scanner.cpython-310.pyc
│           │           │   ├── serializer.cpython-310.pyc
│           │           │   └── tokens.cpython-310.pyc
│           │           ├── _yaml.cp310-win_amd64.pyd
│           │           ├── composer.py
│           │           ├── constructor.py
│           │           ├── cyaml.py
│           │           ├── dumper.py
│           │           ├── emitter.py
│           │           ├── error.py
│           │           ├── events.py
│           │           ├── loader.py
│           │           ├── nodes.py
│           │           ├── parser.py
│           │           ├── reader.py
│           │           ├── representer.py
│           │           ├── resolver.py
│           │           ├── scanner.py
│           │           ├── serializer.py
│           │           └── tokens.py
│           ├── Scripts
│           │   ├── __pycache__
│           │   │   ├── fixup_vision_v1_keywords.cpython-310.pyc
│           │   │   ├── fixup_vision_v1p1beta1_keywords.cpython-310.pyc
│           │   │   ├── fixup_vision_v1p2beta1_keywords.cpython-310.pyc
│           │   │   ├── fixup_vision_v1p3beta1_keywords.cpython-310.pyc
│           │   │   └── fixup_vision_v1p4beta1_keywords.cpython-310.pyc
│           │   ├── activate
│           │   ├── activate.bat
│           │   ├── activate.fish
│           │   ├── activate.nu
│           │   ├── activate.ps1
│           │   ├── activate_this.py
│           │   ├── chardetect.exe
│           │   ├── deactivate.bat
│           │   ├── deactivate.nu
│           │   ├── dotenv.exe
│           │   ├── fixup_vision_v1_keywords.py
│           │   ├── fixup_vision_v1p1beta1_keywords.py
│           │   ├── fixup_vision_v1p2beta1_keywords.py
│           │   ├── fixup_vision_v1p3beta1_keywords.py
│           │   ├── fixup_vision_v1p4beta1_keywords.py
│           │   ├── normalizer.exe
│           │   ├── pip-3.10.exe
│           │   ├── pip.exe
│           │   ├── pip3.10.exe
│           │   ├── pip3.exe
│           │   ├── py.test.exe
│           │   ├── pydoc.bat
│           │   ├── pyrsa-decrypt.exe
│           │   ├── pyrsa-encrypt.exe
│           │   ├── pyrsa-keygen.exe
│           │   ├── pyrsa-priv2pub.exe
│           │   ├── pyrsa-sign.exe
│           │   ├── pyrsa-verify.exe
│           │   ├── pytest.exe
│           │   ├── python.exe
│           │   ├── pythonw.exe
│           │   ├── translate
│           │   ├── uvicorn.exe
│           │   ├── watchfiles.exe
│           │   ├── wheel-3.10.exe
│           │   ├── wheel.exe
│           │   ├── wheel3.10.exe
│           │   └── wheel3.exe
│           └── pyvenv.cfg
├── Flutter_Client
│   ├── README.md
│   ├── analysis_options.yaml
│   ├── android
│   │   ├── app
│   │   │   ├── build.gradle
│   │   │   └── src
│   │   │       ├── debug
│   │   │       │   └── AndroidManifest.xml
│   │   │       ├── main
│   │   │       │   ├── AndroidManifest.xml
│   │   │       │   ├── kotlin
│   │   │       │   │   └── com
│   │   │       │   │       └── example
│   │   │       │   │           └── osaka
│   │   │       │   │               └── MainActivity.kt
│   │   │       │   └── res
│   │   │       │       ├── drawable
│   │   │       │       │   ├── background.png
│   │   │       │       │   └── launch_background.xml
│   │   │       │       ├── drawable-hdpi
│   │   │       │       │   └── splash.png
│   │   │       │       ├── drawable-mdpi
│   │   │       │       │   └── splash.png
│   │   │       │       ├── drawable-night
│   │   │       │       │   ├── background.png
│   │   │       │       │   └── launch_background.xml
│   │   │       │       ├── drawable-night-v21
│   │   │       │       │   ├── background.png
│   │   │       │       │   └── launch_background.xml
│   │   │       │       ├── drawable-v21
│   │   │       │       │   ├── background.png
│   │   │       │       │   └── launch_background.xml
│   │   │       │       ├── drawable-xhdpi
│   │   │       │       │   └── splash.png
│   │   │       │       ├── drawable-xxhdpi
│   │   │       │       │   └── splash.png
│   │   │       │       ├── drawable-xxxhdpi
│   │   │       │       │   └── splash.png
│   │   │       │       ├── mipmap-hdpi
│   │   │       │       │   └── ic_launcher.png
│   │   │       │       ├── mipmap-mdpi
│   │   │       │       │   └── ic_launcher.png
│   │   │       │       ├── mipmap-xhdpi
│   │   │       │       │   └── ic_launcher.png
│   │   │       │       ├── mipmap-xxhdpi
│   │   │       │       │   └── ic_launcher.png
│   │   │       │       ├── mipmap-xxxhdpi
│   │   │       │       │   └── ic_launcher.png
│   │   │       │       ├── values
│   │   │       │       │   └── styles.xml
│   │   │       │       └── values-night
│   │   │       │           └── styles.xml
│   │   │       └── profile
│   │   │           └── AndroidManifest.xml
│   │   ├── build.gradle
│   │   ├── gradle
│   │   │   └── wrapper
│   │   │       └── gradle-wrapper.properties
│   │   ├── gradle.properties
│   │   └── settings.gradle
│   ├── assets
│   │   ├── android12splash.png
│   │   ├── audios
│   │   │   └── favicon.png
│   │   ├── fonts
│   │   │   ├── DalseoDarling.ttf
│   │   │   ├── DalseoHealingBold.ttf
│   │   │   ├── DalseoHealingMedium.ttf
│   │   │   ├── KOTRA_BOLD.ttf
│   │   │   ├── Poppins-SemiBold.ttf
│   │   │   └── favicon.png
│   │   ├── images
│   │   │   ├── coverEmpty@3x.png
│   │   │   └── favicon.png
│   │   ├── json
│   │   │   └── nutrition.json
│   │   ├── lottie_animations
│   │   │   └── favicon.png
│   │   ├── pdfs
│   │   │   └── favicon.png
│   │   ├── rive_animations
│   │   │   └── favicon.png
│   │   ├── splash.png
│   │   └── videos
│   │       └── favicon.png
│   ├── ios
│   │   ├── Flutter
│   │   │   ├── AppFrameworkInfo.plist
│   │   │   ├── Debug.xcconfig
│   │   │   └── Release.xcconfig
│   │   ├── ImageNotification
│   │   │   ├── Info.plist
│   │   │   └── NotificationService.swift
│   │   ├── Podfile
│   │   ├── Runner
│   │   │   ├── AppDelegate.swift
│   │   │   ├── Assets.xcassets
│   │   │   │   ├── AppIcon.appiconset
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   ├── Icon-App-1024x1024@1x.png
│   │   │   │   │   ├── Icon-App-20x20@1x.png
│   │   │   │   │   ├── Icon-App-20x20@2x.png
│   │   │   │   │   ├── Icon-App-20x20@3x.png
│   │   │   │   │   ├── Icon-App-29x29@1x.png
│   │   │   │   │   ├── Icon-App-29x29@2x.png
│   │   │   │   │   ├── Icon-App-29x29@3x.png
│   │   │   │   │   ├── Icon-App-40x40@1x.png
│   │   │   │   │   ├── Icon-App-40x40@2x.png
│   │   │   │   │   ├── Icon-App-40x40@3x.png
│   │   │   │   │   ├── Icon-App-60x60@2x.png
│   │   │   │   │   ├── Icon-App-60x60@3x.png
│   │   │   │   │   ├── Icon-App-76x76@1x.png
│   │   │   │   │   ├── Icon-App-76x76@2x.png
│   │   │   │   │   └── Icon-App-83.5x83.5@2x.png
│   │   │   │   ├── LaunchBackground.imageset
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   ├── background.png
│   │   │   │   │   └── darkbackground.png
│   │   │   │   └── LaunchImage.imageset
│   │   │   │       ├── Contents.json
│   │   │   │       ├── LaunchImage.png
│   │   │   │       ├── LaunchImage@2x.png
│   │   │   │       ├── LaunchImage@3x.png
│   │   │   │       └── README.md
│   │   │   ├── Base.lproj
│   │   │   │   ├── LaunchScreen.storyboard
│   │   │   │   └── Main.storyboard
│   │   │   ├── Info.plist
│   │   │   └── Runner-Bridging-Header.h
│   │   ├── Runner.xcodeproj
│   │   │   ├── project.pbxproj
│   │   │   ├── project.xcworkspace
│   │   │   │   ├── contents.xcworkspacedata
│   │   │   │   └── xcshareddata
│   │   │   │       ├── IDEWorkspaceChecks.plist
│   │   │   │       └── WorkspaceSettings.xcsettings
│   │   │   └── xcshareddata
│   │   │       └── xcschemes
│   │   │           └── Runner.xcscheme
│   │   └── Runner.xcworkspace
│   │       ├── contents.xcworkspacedata
│   │       └── xcshareddata
│   │           ├── IDEWorkspaceChecks.plist
│   │           └── WorkspaceSettings.xcsettings
│   ├── lib
│   │   ├── Food.dart
│   │   ├── PersonalSetting.dart
│   │   ├── SettingPage.dart
│   │   ├── chart
│   │   │   └── chart_widget.dart
│   │   ├── data_edit
│   │   │   └── data_edit_widget.dart
│   │   ├── flutter_flow
│   │   │   ├── flutter_flow_icon_button.dart
│   │   │   ├── flutter_flow_theme.dart
│   │   │   ├── flutter_flow_util.dart
│   │   │   ├── flutter_flow_widgets.dart
│   │   │   ├── internationalization.dart
│   │   │   ├── lat_lng.dart
│   │   │   ├── nav
│   │   │   │   ├── nav.dart
│   │   │   │   └── serialization_util.dart
│   │   │   └── place.dart
│   │   ├── imageSearchPage.dart
│   │   ├── image_search
│   │   │   └── image_search_widget.dart
│   │   ├── index.dart
│   │   ├── main.dart
│   │   ├── pastdata
│   │   │   └── pastdata_widget.dart
│   │   ├── statistics
│   │   │   └── statistics_widget.dart
│   │   └── unused
│   │       ├── SearchPage.dart
│   │       ├── Unused_UI.dart
│   │       ├── example.dart
│   │       ├── imageCheckPage.dart
│   │       └── mainpp.dart
│   ├── linux
│   │   ├── CMakeLists.txt
│   │   ├── flutter
│   │   │   ├── CMakeLists.txt
│   │   │   ├── generated_plugin_registrant.cc
│   │   │   ├── generated_plugin_registrant.h
│   │   │   └── generated_plugins.cmake
│   │   ├── main.cc
│   │   ├── my_application.cc
│   │   └── my_application.h
│   ├── macos
│   │   ├── Flutter
│   │   │   ├── Flutter-Debug.xcconfig
│   │   │   ├── Flutter-Release.xcconfig
│   │   │   └── GeneratedPluginRegistrant.swift
│   │   ├── Runner
│   │   │   ├── AppDelegate.swift
│   │   │   ├── Assets.xcassets
│   │   │   │   └── AppIcon.appiconset
│   │   │   │       ├── Contents.json
│   │   │   │       ├── app_icon_1024.png
│   │   │   │       ├── app_icon_128.png
│   │   │   │       ├── app_icon_16.png
│   │   │   │       ├── app_icon_256.png
│   │   │   │       ├── app_icon_32.png
│   │   │   │       ├── app_icon_512.png
│   │   │   │       └── app_icon_64.png
│   │   │   ├── Base.lproj
│   │   │   │   └── MainMenu.xib
│   │   │   ├── Configs
│   │   │   │   ├── AppInfo.xcconfig
│   │   │   │   ├── Debug.xcconfig
│   │   │   │   ├── Release.xcconfig
│   │   │   │   └── Warnings.xcconfig
│   │   │   ├── DebugProfile.entitlements
│   │   │   ├── Info.plist
│   │   │   ├── MainFlutterWindow.swift
│   │   │   └── Release.entitlements
│   │   ├── Runner.xcodeproj
│   │   │   ├── project.pbxproj
│   │   │   ├── project.xcworkspace
│   │   │   │   └── xcshareddata
│   │   │   │       └── IDEWorkspaceChecks.plist
│   │   │   └── xcshareddata
│   │   │       └── xcschemes
│   │   │           └── Runner.xcscheme
│   │   └── Runner.xcworkspace
│   │       ├── contents.xcworkspacedata
│   │       └── xcshareddata
│   │           └── IDEWorkspaceChecks.plist
│   ├── pubspec.lock
│   ├── pubspec.yaml
│   ├── test
│   │   └── widget_test.dart
│   ├── test.txt
│   ├── web
│   │   ├── favicon.png
│   │   ├── icons
│   │   │   ├── Icon-192.png
│   │   │   ├── Icon-512.png
│   │   │   ├── Icon-maskable-192.png
│   │   │   └── Icon-maskable-512.png
│   │   ├── index.html
│   │   ├── manifest.json
│   │   └── splash
│   │       ├── img
│   │       │   ├── dark-1x.png
│   │       │   ├── dark-2x.png
│   │       │   ├── dark-3x.png
│   │       │   ├── dark-4x.png
│   │       │   ├── light-1x.png
│   │       │   ├── light-2x.png
│   │       │   ├── light-3x.png
│   │       │   └── light-4x.png
│   │       ├── splash.js
│   │       └── style.css
│   └── windows
│       ├── CMakeLists.txt
│       ├── flutter
│       │   ├── CMakeLists.txt
│       │   ├── generated_plugin_registrant.cc
│       │   ├── generated_plugin_registrant.h
│       │   └── generated_plugins.cmake
│       └── runner
│           ├── CMakeLists.txt
│           ├── Runner.rc
│           ├── flutter_window.cpp
│           ├── flutter_window.h
│           ├── main.cpp
│           ├── resource.h
│           ├── resources
│           │   └── app_icon.ico
│           ├── runner.exe.manifest
│           ├── utils.cpp
│           ├── utils.h
│           ├── win32_window.cpp
│           └── win32_window.h
└── README.md
```


## FASTAPI_SERVER

백엔드 서버, 이미지처리, json 반환을 담당



## Flutter_Client

모바일 클라이언트



# 사용한 API, 오픈소스, 데이터 리스트

1. [카카오맵 API](https://apis.map.kakao.com/)
2. [Google Place API](https://developers.google.com/maps/documentation/places/web-service/overview)
3. [공공데이터포털 데이터](https://www.data.go.kr/)
4. [카카오 챗봇 API](https://i.kakao.com/docs/tutorial-chatbot-key-features) 



## 개발환경
- 깃허브 페이지 : javascript
- 모바일 앱 : flutter, DART
- 챗봇 : 카카오 i 오픈빌더, python






# 팀원
<p align="center">
<table align="center" >
   <tr>
        <td align="center"><a href="https://github.com/SebellKo"><img src="https://github.com/SebellKo.png" width="100px;" alt=""/><br /><sub><b><br/>고세종</b></sub></a></td>
        <td align="center"><a href="https://github.com/NAMUORI00"><img src="https://github.com/NAMUORI00.png" width="100px;" alt=""/><br /><sub><b><br/>김유석</b></sub></a></td>
        <td align="center"><a href="https://github.com/jymh22"><img src="https://github.com/jymh22.png" width="100px;" alt=""/><br /><sub><b><br/>이홍규</b></sub></a></td>
     <td align="center"><a href="https://github.com/claris0"><img src="https://github.com/claris0.png" width="100px;" alt=""/><br /><sub><b><br/>선종호</b></sub></a></td>
   </tr>
</table>




# 라이선스(License List)

# OSS Notice | STILL #

This application is Copyright © CATEGORY. All rights reserved.

The following sets forth attribution notices for third party software that may be contained in this application.


-----------------------------------------------------------------
Code uses MIT license as follows:

# The MIT License(MIT) #

``````````
Copyright (c) CATEGORY

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
     
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
     
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

