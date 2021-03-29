load("@bazel_gazelle//:deps.bzl", "go_repository")

# bazelisk run //:gazelle -- update-repos -from_file=go.mod -to_macro=repositories.bzl%go_repositories
def go_repositories():
    go_repository(
        name = "ag_pack_amqp",
        importpath = "pack.ag/amqp",
        sum = "h1:cuNDWLUTbKRtEZwhB0WQBXf9pGbm87pUBXQhvcFxBWg=",
        version = "v0.11.2",
    )
    go_repository(
        name = "co_honnef_go_tools",
        importpath = "honnef.co/go/tools",
        sum = "h1:UoveltGrhghAA7ePc+e+QYDHXrBps2PqFZiHkGR/xK8=",
        version = "v0.0.1-2020.1.4",
    )
    go_repository(
        name = "com_github_afex_hystrix_go",
        importpath = "github.com/afex/hystrix-go",
        sum = "h1:rFw4nCn9iMW+Vajsk51NtYIcwSTkXr+JGrMd36kTDJw=",
        version = "v0.0.0-20180502004556-fa1af6a1f4f5",
    )

    go_repository(
        name = "com_github_alecthomas_kingpin",
        importpath = "github.com/alecthomas/kingpin",
        sum = "h1:5svnBTFgJjZvGKyYBtMB0+m5wvrbUHiqye8wRJMlnYI=",
        version = "v2.2.6+incompatible",
    )
    go_repository(
        name = "com_github_alecthomas_template",
        importpath = "github.com/alecthomas/template",
        sum = "h1:JYp7IbQjafoB+tBA3gMyHYHrpOtNuDiK/uB5uXxq5wM=",
        version = "v0.0.0-20190718012654-fb15b899a751",
    )
    go_repository(
        name = "com_github_alecthomas_units",
        importpath = "github.com/alecthomas/units",
        sum = "h1:UQZhZ2O0vMHr2cI+DC1Mbh0TJxzA3RcLoMsFw+aXw7E=",
        version = "v0.0.0-20190924025748-f65c72e2690d",
    )

    go_repository(
        name = "com_github_apache_arrow_go_arrow",
        importpath = "github.com/apache/arrow/go/arrow",
        sum = "h1:5ultmol0yeX75oh1hY78uAFn3dupBQ/QUNxERCkiaUQ=",
        version = "v0.0.0-20200601151325-b2287a20f230",
    )
    go_repository(
        name = "com_github_apache_thrift",
        importpath = "github.com/apache/thrift",
        sum = "h1:5hryIiq9gtn+MiLVn0wP37kb/uTeRZgN08WoCsAhIhI=",
        version = "v0.13.0",
    )

    go_repository(
        name = "com_github_apex_log",
        importpath = "github.com/apex/log",
        sum = "h1:3Zk+boorIQAAGBrHn0JUtAau4ihMamT4WdnfdnXM1zQ=",
        version = "v1.1.4",
    )
    go_repository(
        name = "com_github_apex_logs",
        importpath = "github.com/apex/logs",
        sum = "h1:KmEBVwfDUOTFcBO8cfkJYwdQ5487UZSN+GteOGPmiro=",
        version = "v0.0.4",
    )
    go_repository(
        name = "com_github_aphistic_golf",
        importpath = "github.com/aphistic/golf",
        sum = "h1:2KLQMJ8msqoPHIPDufkxVcoTtcmE5+1sL9950m4R9Pk=",
        version = "v0.0.0-20180712155816-02c07f170c5a",
    )
    go_repository(
        name = "com_github_aphistic_sweet",
        importpath = "github.com/aphistic/sweet",
        sum = "h1:I4z+fAUqvKfvZV/CHi5dV0QuwbmIvYYFDjG0Ss5QpAs=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_armon_circbuf",
        importpath = "github.com/armon/circbuf",
        sum = "h1:QEF07wC0T1rKkctt1RINW/+RMTVmiwxETico2l3gxJA=",
        version = "v0.0.0-20150827004946-bbbad097214e",
    )

    go_repository(
        name = "com_github_armon_consul_api",
        importpath = "github.com/armon/consul-api",
        sum = "h1:G1bPvciwNyF7IUmKXNt9Ak3m6u9DE1rF+RmtIkBpVdA=",
        version = "v0.0.0-20180202201655-eb2c6b5be1b6",
    )
    go_repository(
        name = "com_github_armon_go_metrics",
        importpath = "github.com/armon/go-metrics",
        sum = "h1:8GUt8eRujhVEGZFFEjBj46YV4rDjvGrNxb0KMWYkL2I=",
        version = "v0.0.0-20180917152333-f0300d1749da",
    )
    go_repository(
        name = "com_github_armon_go_radix",
        importpath = "github.com/armon/go-radix",
        sum = "h1:BUAU3CGlLvorLI26FmByPp2eC2qla6E1Tw+scpcg/to=",
        version = "v0.0.0-20180808171621-7fddfc383310",
    )
    go_repository(
        name = "com_github_aryann_difflib",
        importpath = "github.com/aryann/difflib",
        sum = "h1:pv34s756C4pEXnjgPfGYgdhg/ZdajGhyOvzx8k+23nw=",
        version = "v0.0.0-20170710044230-e206f873d14a",
    )
    go_repository(
        name = "com_github_aws_aws_lambda_go",
        importpath = "github.com/aws/aws-lambda-go",
        sum = "h1:SuCy7H3NLyp+1Mrfp+m80jcbi9KYWAs9/BXwppwRDzY=",
        version = "v1.13.3",
    )

    go_repository(
        name = "com_github_aws_aws_sdk_go",
        importpath = "github.com/aws/aws-sdk-go",
        sum = "h1:0xphMHGMLBrPMfxR2AmVjZKcMEESEgWF8Kru94BNByk=",
        version = "v1.27.0",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go_v2",
        importpath = "github.com/aws/aws-sdk-go-v2",
        sum = "h1:qZ+woO4SamnH/eEbjM2IDLhRNwIwND/RQyVlBLp3Jqg=",
        version = "v0.18.0",
    )

    go_repository(
        name = "com_github_aybabtme_rgbterm",
        importpath = "github.com/aybabtme/rgbterm",
        sum = "h1:WWB576BN5zNSZc/M9d/10pqEx5VHNhaQ/yOVAkmj5Yo=",
        version = "v0.0.0-20170906152045-cc83f3b3ce59",
    )
    go_repository(
        name = "com_github_azure_azure_amqp_common_go_v2",
        importpath = "github.com/Azure/azure-amqp-common-go/v2",
        sum = "h1:+QbFgmWCnPzdaRMfsI0Yb6GrRdBj5jVL8N3EXuEUcBQ=",
        version = "v2.1.0",
    )
    go_repository(
        name = "com_github_azure_azure_pipeline_go",
        importpath = "github.com/Azure/azure-pipeline-go",
        sum = "h1:OLBdZJ3yvOn2MezlWvbrBMTEUQC72zAftRZOMdj5HYo=",
        version = "v0.2.1",
    )
    go_repository(
        name = "com_github_azure_azure_sdk_for_go",
        importpath = "github.com/Azure/azure-sdk-for-go",
        sum = "h1:HyYPft8wXpxMd0kfLtXo6etWcO+XuPbLkcgx9g2cqxU=",
        version = "v30.1.0+incompatible",
    )
    go_repository(
        name = "com_github_azure_azure_service_bus_go",
        importpath = "github.com/Azure/azure-service-bus-go",
        sum = "h1:G1qBLQvHCFDv9pcpgwgFkspzvnGknJRR0PYJ9ytY/JA=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_azure_azure_storage_blob_go",
        importpath = "github.com/Azure/azure-storage-blob-go",
        sum = "h1:53qhf0Oxa0nOjgbDeeYPUeyiNmafAFEY95rZLK0Tj6o=",
        version = "v0.8.0",
    )
    go_repository(
        name = "com_github_azure_go_ansiterm",
        importpath = "github.com/Azure/go-ansiterm",
        sum = "h1:w+iIsaOQNcT7OZ575w+acHgRric5iCyQh+xv+KJ4HB8=",
        version = "v0.0.0-20170929234023-d6e3b3328b78",
    )

    go_repository(
        name = "com_github_azure_go_autorest",
        importpath = "github.com/Azure/go-autorest",
        sum = "h1:N+VqClcomLGD/sHb3smbSYYtNMgKpVV3Cd5r5i8z6bQ=",
        version = "v12.0.0+incompatible",
    )
    go_repository(
        name = "com_github_beorn7_perks",
        importpath = "github.com/beorn7/perks",
        sum = "h1:VlbKKnNfV8bJzeqoa4cOKqO6bYr3WgKZxO8Z16+hsOM=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_bgentry_speakeasy",
        importpath = "github.com/bgentry/speakeasy",
        sum = "h1:ByYyxL9InA1OWqxJqqp2A5pYHUrCiAL6K3J+LKSsQkY=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_bitly_go_hostpool",
        importpath = "github.com/bitly/go-hostpool",
        sum = "h1:mXoPYz/Ul5HYEDvkta6I8/rnYM5gSdSV2tJ6XbZuEtY=",
        version = "v0.0.0-20171023180738-a3a6125de932",
    )
    go_repository(
        name = "com_github_bkaradzic_go_lz4",
        importpath = "github.com/bkaradzic/go-lz4",
        sum = "h1:RXc4wYsyz985CkXXeX04y4VnZFGG8Rd43pRaHsOXAKk=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_blakesmith_ar",
        importpath = "github.com/blakesmith/ar",
        sum = "h1:m935MPodAbYS46DG4pJSv7WO+VECIWUQ7OJYSoTrMh4=",
        version = "v0.0.0-20190502131153-809d4375e1fb",
    )
    go_repository(
        name = "com_github_bmizerany_assert",
        importpath = "github.com/bmizerany/assert",
        sum = "h1:DDGfHa7BWjL4YnC6+E63dPcxHo2sUxDIu8g3QgEJdRY=",
        version = "v0.0.0-20160611221934-b7ed37b82869",
    )
    go_repository(
        name = "com_github_burntsushi_toml",
        importpath = "github.com/BurntSushi/toml",
        sum = "h1:WXkYYl6Yr3qBf1K79EBnL4mak0OimBfB0XUf9Vl28OQ=",
        version = "v0.3.1",
    )
    go_repository(
        name = "com_github_burntsushi_xgb",
        importpath = "github.com/BurntSushi/xgb",
        sum = "h1:1BDTz0u9nC3//pOCMdNH+CiXJVYJh5UQNCOBG7jbELc=",
        version = "v0.0.0-20160522181843-27f122750802",
    )

    go_repository(
        name = "com_github_caarlos0_ctrlc",
        importpath = "github.com/caarlos0/ctrlc",
        sum = "h1:2DtF8GSIcajgffDFJzyG15vO+1PuBWOMUdFut7NnXhw=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_campoy_unique",
        importpath = "github.com/campoy/unique",
        sum = "h1:V9a67dfYqPLAvzk5hMQOXYJlZ4SLIXgyKIE+ZiHzgGQ=",
        version = "v0.0.0-20180121183637-88950e537e7e",
    )
    go_repository(
        name = "com_github_casbin_casbin_v2",
        importpath = "github.com/casbin/casbin/v2",
        sum = "h1:bTwon/ECRx9dwBy2ewRVr5OiqjeXSGiTUY74sDPQi/g=",
        version = "v2.1.2",
    )

    go_repository(
        name = "com_github_cavaliercoder_go_cpio",
        importpath = "github.com/cavaliercoder/go-cpio",
        sum = "h1:hHg27A0RSSp2Om9lubZpiMgVbvn39bsUmW9U5h0twqc=",
        version = "v0.0.0-20180626203310-925f9528c45e",
    )
    go_repository(
        name = "com_github_cenkalti_backoff",
        importpath = "github.com/cenkalti/backoff",
        sum = "h1:tNowT99t7UNflLxfYYSlKYsBpXdEet03Pg2g16Swow4=",
        version = "v2.2.1+incompatible",
    )

    go_repository(
        name = "com_github_cenkalti_backoff_v3",
        importpath = "github.com/cenkalti/backoff/v3",
        sum = "h1:ske+9nBpD9qZsTBoF41nW5L+AIuFBKMeze18XQ3eG1c=",
        version = "v3.0.0",
    )
    go_repository(
        name = "com_github_cenkalti_backoff_v4",
        importpath = "github.com/cenkalti/backoff/v4",
        sum = "h1:JIufpQLbh4DkbQoii76ItQIUFzevQSqOLZca4eamEDs=",
        version = "v4.0.2",
    )

    go_repository(
        name = "com_github_census_instrumentation_opencensus_proto",
        importpath = "github.com/census-instrumentation/opencensus-proto",
        sum = "h1:glEXhBS5PSLLv4IXzLA5yPRVX4bilULVyxxbrfOtDAk=",
        version = "v0.2.1",
    )

    go_repository(
        name = "com_github_cespare_xxhash",
        importpath = "github.com/cespare/xxhash",
        sum = "h1:a6HrQnmkObjyL+Gs60czilIUGqrzKutQD6XZog3p+ko=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_cespare_xxhash_v2",
        importpath = "github.com/cespare/xxhash/v2",
        sum = "h1:6MnRN8NT7+YBpUIWxHtefFZOKTAPgGjpQSxqLNn0+qY=",
        version = "v2.1.1",
    )

    go_repository(
        name = "com_github_chzyer_logex",
        importpath = "github.com/chzyer/logex",
        sum = "h1:Swpa1K6QvQznwJRcfTfQJmTE72DqScAa40E+fbHEXEE=",
        version = "v1.1.10",
    )
    go_repository(
        name = "com_github_chzyer_readline",
        importpath = "github.com/chzyer/readline",
        sum = "h1:fY5BOSpyZCqRo5OhCuC+XN+r/bBCmeuuJtjz+bCNIf8=",
        version = "v0.0.0-20180603132655-2972be24d48e",
    )
    go_repository(
        name = "com_github_chzyer_test",
        importpath = "github.com/chzyer/test",
        sum = "h1:q763qf9huN11kDQavWsoZXJNW3xEE4JJyHa5Q25/sd8=",
        version = "v0.0.0-20180213035817-a1ea475d72b1",
    )
    go_repository(
        name = "com_github_clbanning_x2j",
        importpath = "github.com/clbanning/x2j",
        sum = "h1:EdRZT3IeKQmfCSrgo8SZ8V3MEnskuJP0wCYNpe+aiXo=",
        version = "v0.0.0-20191024224557-825249438eec",
    )

    go_repository(
        name = "com_github_clickhouse_clickhouse_go",
        importpath = "github.com/ClickHouse/clickhouse-go",
        sum = "h1:HvD2NhKPLSeO3Ots6YV0ePgs4l3wO0bLqa9Uk1yeMOs=",
        version = "v1.3.12",
    )
    go_repository(
        name = "com_github_client9_misspell",
        importpath = "github.com/client9/misspell",
        sum = "h1:ta993UF76GwbvJcIo3Y68y/M3WxlpEHPWIGDkJYwzJI=",
        version = "v0.3.4",
    )
    go_repository(
        name = "com_github_cloudflare_golz4",
        importpath = "github.com/cloudflare/golz4",
        sum = "h1:F1EaeKL/ta07PY/k9Os/UFtwERei2/XzGemhpGnBKNg=",
        version = "v0.0.0-20150217214814-ef862a3cdc58",
    )
    go_repository(
        name = "com_github_cncf_udpa_go",
        importpath = "github.com/cncf/udpa/go",
        sum = "h1:cqQfy1jclcSy/FwLjemeg3SR1yaINm74aQyupQ0Bl8M=",
        version = "v0.0.0-20201120205902-5459f2c99403",
    )
    go_repository(
        name = "com_github_cockroachdb_apd",
        importpath = "github.com/cockroachdb/apd",
        sum = "h1:3LFP3629v+1aKXU5Q37mxmRxX/pIu1nijXydLShEq5I=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_cockroachdb_cockroach_go",
        importpath = "github.com/cockroachdb/cockroach-go",
        sum = "h1:eApuUG8W2EtBVwxqLlY2wgoqDYOg3WvIHGvW4fUbbow=",
        version = "v0.0.0-20190925194419-606b3d062051",
    )
    go_repository(
        name = "com_github_cockroachdb_datadriven",
        importpath = "github.com/cockroachdb/datadriven",
        sum = "h1:OaNxuTZr7kxeODyLWsRMC+OD03aFUH+mW6r2d+MWa5Y=",
        version = "v0.0.0-20190809214429-80d97fb3cbaa",
    )
    go_repository(
        name = "com_github_codahale_hdrhistogram",
        importpath = "github.com/codahale/hdrhistogram",
        sum = "h1:qMd81Ts1T2OTKmB4acZcyKaMtRnY5Y44NuXGX2GFJ1w=",
        version = "v0.0.0-20161010025455-3a0bb77429bd",
    )

    go_repository(
        name = "com_github_containerd_containerd",
        importpath = "github.com/containerd/containerd",
        sum = "h1:pASeJT3R3YyVn+94qEPk0SnU1OQ20Jd/T+SPKy9xehY=",
        version = "v1.4.1",
    )

    go_repository(
        name = "com_github_containerd_continuity",
        importpath = "github.com/containerd/continuity",
        sum = "h1:NmTXa/uVnDyp0TY5MKi197+3HWcnYWfnHGyaFthlnGw=",
        version = "v0.0.0-20190827140505-75bee3e2ccb6",
    )
    go_repository(
        name = "com_github_coreos_bbolt",
        importpath = "github.com/coreos/bbolt",
        sum = "h1:wZwiHHUieZCquLkDL0B8UhzreNWsPHooDAG3q34zk0s=",
        version = "v1.3.2",
    )
    go_repository(
        name = "com_github_coreos_etcd",
        importpath = "github.com/coreos/etcd",
        sum = "h1:jFneRYjIvLMLhDLCzuTuU4rSJUjRplcJQ7pD7MnhC04=",
        version = "v3.3.10+incompatible",
    )
    go_repository(
        name = "com_github_coreos_go_semver",
        importpath = "github.com/coreos/go-semver",
        sum = "h1:3Jm3tLmsgAYcjC+4Up7hJrFBPr+n7rAqYeSw/SZazuY=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_coreos_go_systemd",
        importpath = "github.com/coreos/go-systemd",
        sum = "h1:JOrtw2xFKzlg+cbHpyrpLDmnN1HqhBfnX7WDiW7eG2c=",
        version = "v0.0.0-20190719114852-fd7a80b32e1f",
    )

    go_repository(
        name = "com_github_coreos_pkg",
        importpath = "github.com/coreos/pkg",
        sum = "h1:lBNOc5arjvs8E5mO2tbpBpLoyyu8B6e44T7hJy6potg=",
        version = "v0.0.0-20180928190104-399ea9e2e55f",
    )
    go_repository(
        name = "com_github_cpuguy83_go_md2man_v2",
        importpath = "github.com/cpuguy83/go-md2man/v2",
        sum = "h1:EoUDS0afbrsXAZ9YQ9jdu/mZ2sXgT1/2yyNng4PGlyM=",
        version = "v2.0.0",
    )
    go_repository(
        name = "com_github_creack_pty",
        importpath = "github.com/creack/pty",
        sum = "h1:uDmaGzcdjhF4i/plgjmEsriH11Y0o7RKapEf/LDaM3w=",
        version = "v1.1.9",
    )
    go_repository(
        name = "com_github_cznic_mathutil",
        importpath = "github.com/cznic/mathutil",
        sum = "h1:XNT/Zf5l++1Pyg08/HV04ppB0gKxAqtZQBRYiYrUuYk=",
        version = "v0.0.0-20180504122225-ca4c9f2c1369",
    )
    go_repository(
        name = "com_github_davecgh_go_spew",
        importpath = "github.com/davecgh/go-spew",
        sum = "h1:vj9j/u1bqnvCEfJOwUhtlOARqs3+rkHYY13jYWTU97c=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_denisenkom_go_mssqldb",
        importpath = "github.com/denisenkom/go-mssqldb",
        sum = "h1:NfhRXXFDPxcF5Cwo06DzeIaE7uuJtAUhsDwH3LNsjos=",
        version = "v0.0.0-20200620013148-b91950f658ec",
    )

    go_repository(
        name = "com_github_devigned_tab",
        importpath = "github.com/devigned/tab",
        sum = "h1:3mD6Kb1mUOYeLpJvTVSDwSg5ZsfSxfvxGRTxRsJsITA=",
        version = "v0.1.1",
    )
    go_repository(
        name = "com_github_dgrijalva_jwt_go",
        importpath = "github.com/dgrijalva/jwt-go",
        sum = "h1:7qlOGliEKZXTDg6OTjfoBKDXWrumCAMpl/TFQ4/5kLM=",
        version = "v3.2.0+incompatible",
    )
    go_repository(
        name = "com_github_dgryski_go_sip13",
        importpath = "github.com/dgryski/go-sip13",
        sum = "h1:RMLoZVzv4GliuWafOuPuQDKSm1SJph7uCRnnS61JAn4=",
        version = "v0.0.0-20181026042036-e10d5fee7954",
    )
    go_repository(
        name = "com_github_dhui_dktest",
        importpath = "github.com/dhui/dktest",
        sum = "h1:DBuH/9GFaWbDRa42qsut/hbQu+srAQ0rPWnUoiGX7CA=",
        version = "v0.3.3",
    )

    go_repository(
        name = "com_github_dimchansky_utfbom",
        importpath = "github.com/dimchansky/utfbom",
        sum = "h1:FcM3g+nofKgUteL8dm/UpdRXNC9KmADgTpLKsu0TRo4=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_docker_distribution",
        importpath = "github.com/docker/distribution",
        sum = "h1:a5mlkVzth6W5A4fOsS3D2EO5BUmsJpcB+cRlLU7cSug=",
        version = "v2.7.1+incompatible",
    )
    go_repository(
        name = "com_github_docker_docker",
        importpath = "github.com/docker/docker",
        sum = "h1:iWPIG7pWIsCwT6ZtHnTUpoVMnete7O/pzd9HFE3+tn8=",
        version = "v17.12.0-ce-rc1.0.20200618181300-9dc6525e6118+incompatible",
    )
    go_repository(
        name = "com_github_docker_go_connections",
        importpath = "github.com/docker/go-connections",
        sum = "h1:El9xVISelRB7BuFusrZozjnkIM5YnzCViNKohAFqRJQ=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_docker_go_units",
        importpath = "github.com/docker/go-units",
        sum = "h1:3uh0PgVws3nIA0Q+MwDC8yjEPf9zjRfZZWXZYDct3Tw=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_dustin_go_humanize",
        importpath = "github.com/dustin/go-humanize",
        sum = "h1:qk/FSDDxo05wdJH28W+p5yivv7LuLYLRXPPD8KQCtZs=",
        version = "v0.0.0-20171111073723-bb3d318650d4",
    )

    go_repository(
        name = "com_github_eapache_go_resiliency",
        importpath = "github.com/eapache/go-resiliency",
        sum = "h1:1NtRmCAqadE2FN4ZcN6g90TP3uk8cg9rn9eNK2197aU=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_eapache_go_xerial_snappy",
        importpath = "github.com/eapache/go-xerial-snappy",
        sum = "h1:YEetp8/yCZMuEPMUDHG0CW/brkkEp8mzqk2+ODEitlw=",
        version = "v0.0.0-20180814174437-776d5712da21",
    )
    go_repository(
        name = "com_github_eapache_queue",
        importpath = "github.com/eapache/queue",
        sum = "h1:YOEu7KNc61ntiQlcEeUIoDTJ2o8mQznoNvUhiigpIqc=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_edsrzf_mmap_go",
        importpath = "github.com/edsrzf/mmap-go",
        sum = "h1:CEBF7HpRnUCSJgGUb5h1Gm7e3VkmVDrR8lvWVLtrOFw=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_envoyproxy_go_control_plane",
        importpath = "github.com/envoyproxy/go-control-plane",
        sum = "h1:EmNYJhPYy0pOFjCx2PrgtaBXmee0iUX9hLlxE1xHOJE=",
        version = "v0.9.9-0.20201210154907-fd9021fe5dad",
    )
    go_repository(
        name = "com_github_envoyproxy_protoc_gen_validate",
        importpath = "github.com/envoyproxy/protoc-gen-validate",
        sum = "h1:EQciDnbrYxy13PgWoY8AqoxGiPrpgBZ1R8UNe3ddc+A=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_fatih_color",
        importpath = "github.com/fatih/color",
        sum = "h1:8xPHl4/q1VyqGIPif1F+1V3Y3lSmrq01EabUW3CoW5s=",
        version = "v1.9.0",
    )
    go_repository(
        name = "com_github_fortytw2_leaktest",
        importpath = "github.com/fortytw2/leaktest",
        sum = "h1:u8491cBMTQ8ft8aeV+adlcytMZylmA5nnwwkRZjI8vw=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_franela_goblin",
        importpath = "github.com/franela/goblin",
        sum = "h1:gb2Z18BhTPJPpLQWj4T+rfKHYCHxRHCtRxhKKjRidVw=",
        version = "v0.0.0-20200105215937-c9ffbefa60db",
    )
    go_repository(
        name = "com_github_franela_goreq",
        importpath = "github.com/franela/goreq",
        sum = "h1:a9ENSRDFBUPkJ5lCgVZh26+ZbGyoVJG7yb5SSzF5H54=",
        version = "v0.0.0-20171204163338-bcd34c9993f8",
    )

    go_repository(
        name = "com_github_fsnotify_fsnotify",
        importpath = "github.com/fsnotify/fsnotify",
        sum = "h1:IXs+QLmnXW2CcXuY+8Mzv/fWEsPGWxqefPtCP5CnV9I=",
        version = "v1.4.7",
    )
    go_repository(
        name = "com_github_fsouza_fake_gcs_server",
        importpath = "github.com/fsouza/fake-gcs-server",
        sum = "h1:OeH75kBZcZa3ZE+zz/mFdJ2btt9FgqfjI7gIh9+5fvk=",
        version = "v1.17.0",
    )
    go_repository(
        name = "com_github_fullstorydev_grpcui",
        importpath = "github.com/fullstorydev/grpcui",
        sum = "h1:fQy79r56kGzYLpdNP0NeSGG41LrSqJi9jJK7aItc5/A=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_fullstorydev_grpcurl",
        importpath = "github.com/fullstorydev/grpcurl",
        sum = "h1:GPb2O+86V4sMFBHqwZ6OJE5gtQtcqhfHYgh0LhS7UmY=",
        version = "v1.7.0",
    )

    go_repository(
        name = "com_github_ghodss_yaml",
        importpath = "github.com/ghodss/yaml",
        sum = "h1:wQHKEahhL6wmXdzwWG11gIVCkOv05bNOh+Rxn0yngAk=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_bindata_go_bindata",
        importpath = "github.com/go-bindata/go-bindata",
        sum = "h1:vyi9feuP3xiGU/GKzmXOdHn0cLNp7RDf3bfCxk+tvno=",
        version = "v0.0.0-20191126083508-8639be0519b3",
    )
    go_repository(
        name = "com_github_go_gl_glfw",
        importpath = "github.com/go-gl/glfw",
        sum = "h1:QbL/5oDUmRBzO9/Z7Seo6zf912W/a6Sr4Eu0G/3Jho0=",
        version = "v0.0.0-20190409004039-e6da0acd62b1",
    )
    go_repository(
        name = "com_github_go_gl_glfw_v3_3_glfw",
        importpath = "github.com/go-gl/glfw/v3.3/glfw",
        sum = "h1:WtGNWLvXpe6ZudgnXrq0barxBImvnnJoMEhXAzcbM0I=",
        version = "v0.0.0-20200222043503-6f7a984d4dc4",
    )

    go_repository(
        name = "com_github_go_ini_ini",
        importpath = "github.com/go-ini/ini",
        sum = "h1:Mujh4R/dH6YL8bxuISne3xX2+qcQ9p0IxKAP6ExWoUo=",
        version = "v1.25.4",
    )
    go_repository(
        name = "com_github_go_kit_kit",
        importpath = "github.com/go-kit/kit",
        sum = "h1:dXFJfIHVvUcpSgDOV+Ne6t7jXri8Tfv2uOLHUZ2XNuo=",
        version = "v0.10.0",
    )
    go_repository(
        name = "com_github_go_logfmt_logfmt",
        importpath = "github.com/go-logfmt/logfmt",
        sum = "h1:TrB8swr/68K7m9CcGut2g3UOihhbcbiMAYiuTXdEih4=",
        version = "v0.5.0",
    )
    go_repository(
        name = "com_github_go_sql_driver_mysql",
        importpath = "github.com/go-sql-driver/mysql",
        sum = "h1:ozyZYNQW3x3HtqT1jira07DN2PArx2v7/mN66gGcHOs=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_go_stack_stack",
        importpath = "github.com/go-stack/stack",
        sum = "h1:5SgMzNM5HxrEjV0ww2lTmX6E2Izsfxas4+YHWRs3Lsk=",
        version = "v1.8.0",
    )

    go_repository(
        name = "com_github_gobuffalo_here",
        importpath = "github.com/gobuffalo/here",
        sum = "h1:hYrd0a6gDmWxBM4TnrGw8mQg24iSVoIkHEk7FodQcBI=",
        version = "v0.6.0",
    )
    go_repository(
        name = "com_github_gocql_gocql",
        importpath = "github.com/gocql/gocql",
        sum = "h1:vF83LI8tAakwEwvWZtrIEx7pOySacl2TOxx6eXk4ePo=",
        version = "v0.0.0-20190301043612-f6df8288f9b4",
    )
    go_repository(
        name = "com_github_gofrs_uuid",
        importpath = "github.com/gofrs/uuid",
        sum = "h1:y12jRkkFxsd7GpqdSZ+/KCs/fJbqpEXSGd4+jfEaewE=",
        version = "v3.2.0+incompatible",
    )
    go_repository(
        name = "com_github_gogo_googleapis",
        importpath = "github.com/gogo/googleapis",
        sum = "h1:kFkMAZBNAn4j7K0GiZr8cRYzejq68VbheufiV3YuyFI=",
        version = "v1.1.0",
    )

    go_repository(
        name = "com_github_gogo_protobuf",
        importpath = "github.com/gogo/protobuf",
        sum = "h1:DqDEcV5aeaTmdFBePNpYsp3FlcVH/2ISVVM9Qf8PSls=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_github_golang_glog",
        importpath = "github.com/golang/glog",
        sum = "h1:VKtxabqXZkF25pY9ekfRL6a582T4P37/31XEstQ5p58=",
        version = "v0.0.0-20160126235308-23def4e6c14b",
    )
    go_repository(
        name = "com_github_golang_groupcache",
        importpath = "github.com/golang/groupcache",
        sum = "h1:1r7pUrabqp18hOBcwBwiTsbnFeTZHV9eER/QT5JVZxY=",
        version = "v0.0.0-20200121045136-8c9f03a8e57e",
    )
    go_repository(
        name = "com_github_golang_migrate_migrate_v4",
        importpath = "github.com/golang-migrate/migrate/v4",
        sum = "h1:qmRd/rNGjM1r3Ve5gHd5ZplytrD02UcItYNxJ3iUHHE=",
        version = "v4.14.1",
    )

    go_repository(
        name = "com_github_golang_mock",
        importpath = "github.com/golang/mock",
        sum = "h1:l75CXGRSwbaYNpl/Z2X1XIIAMSCquvXgpVZDhwEIJsc=",
        version = "v1.4.4",
    )
    go_repository(
        name = "com_github_golang_protobuf",
        importpath = "github.com/golang/protobuf",
        sum = "h1:ROPKBNFfQgOUMifHyP+KYbvpjbdoFNs+aK7DXlji0Tw=",
        version = "v1.5.2",
    )
    go_repository(
        name = "com_github_golang_snappy",
        importpath = "github.com/golang/snappy",
        sum = "h1:Qgr9rKW7uDUkrbSmQeiDsGa8SjGyCOGtuasMWwvp2P4=",
        version = "v0.0.1",
    )

    go_repository(
        name = "com_github_golang_sql_civil",
        importpath = "github.com/golang-sql/civil",
        sum = "h1:lXe2qZdvpiX5WZkZR4hgp4KJVfY3nMkvmwbVkpv1rVY=",
        version = "v0.0.0-20190719163853-cb61b32ac6fe",
    )
    go_repository(
        name = "com_github_google_btree",
        importpath = "github.com/google/btree",
        sum = "h1:0udJVsspx3VBr5FwtLhQQtuAsVc79tTq0ocGIPAU6qo=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_google_flatbuffers",
        importpath = "github.com/google/flatbuffers",
        sum = "h1:O7CEyB8Cb3/DmtxODGtLHcEvpr81Jm5qLg/hsHnxA2A=",
        version = "v1.11.0",
    )
    go_repository(
        name = "com_github_google_go_cmp",
        importpath = "github.com/google/go-cmp",
        sum = "h1:Khx7svrCpmxxtHBq5j2mp/xVjsi8hQMfNLvJFAlrGgU=",
        version = "v0.5.5",
    )
    go_repository(
        name = "com_github_google_go_github",
        importpath = "github.com/google/go-github",
        sum = "h1:N0LgJ1j65A7kfXrZnUDaYCs/Sf4rEjNlfyDHW9dolSY=",
        version = "v17.0.0+incompatible",
    )

    go_repository(
        name = "com_github_google_go_github_v28",
        importpath = "github.com/google/go-github/v28",
        sum = "h1:kORf5ekX5qwXO2mGzXXOjMe/g6ap8ahVe0sBEulhSxo=",
        version = "v28.1.1",
    )
    go_repository(
        name = "com_github_google_go_querystring",
        importpath = "github.com/google/go-querystring",
        sum = "h1:Xkwi/a1rcvNg1PPYe5vI8GbeBY/jrVuDX5ASuANWTrk=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_google_go_replayers_grpcreplay",
        importpath = "github.com/google/go-replayers/grpcreplay",
        sum = "h1:eNb1y9rZFmY4ax45uEEECSa8fsxGRU+8Bil52ASAwic=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_google_go_replayers_httpreplay",
        importpath = "github.com/google/go-replayers/httpreplay",
        sum = "h1:AX7FUb4BjrrzNvblr/OlgwrmFiep6soj5K2QSDW7BGk=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_google_gofuzz",
        importpath = "github.com/google/gofuzz",
        sum = "h1:A8PeW59pxE9IoFRqBp37U+mSNaQoZ46F1f0f863XSXw=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_google_martian",
        importpath = "github.com/google/martian",
        sum = "h1:xmapqc1AyLoB+ddYT6r04bD9lIjlOqGaREovi0SzFaE=",
        version = "v2.1.1-0.20190517191504-25dcb96d9e51+incompatible",
    )

    go_repository(
        name = "com_github_google_martian_v3",
        importpath = "github.com/google/martian/v3",
        sum = "h1:pMen7vLs8nvgEYhywH3KDWJIJTeEr2ULsVWHWYHQyBs=",
        version = "v3.0.0",
    )
    go_repository(
        name = "com_github_google_pprof",
        importpath = "github.com/google/pprof",
        sum = "h1:Ak8CrdlwwXwAZxzS66vgPt4U8yUZX7JwLvVR58FN5jM=",
        version = "v0.0.0-20200708004538-1a94d8640e99",
    )
    go_repository(
        name = "com_github_google_renameio",
        importpath = "github.com/google/renameio",
        sum = "h1:GOZbcHa3HfsPKPlmyPyN2KEohoMXOhdMbHrvbpl2QaA=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_google_rpmpack",
        importpath = "github.com/google/rpmpack",
        sum = "h1:BW6OvS3kpT5UEPbCZ+KyX/OB4Ks9/MNMhWjqPPkZxsE=",
        version = "v0.0.0-20191226140753-aa36bfddb3a0",
    )
    go_repository(
        name = "com_github_google_subcommands",
        importpath = "github.com/google/subcommands",
        sum = "h1:/eqq+otEXm5vhfBrbREPCSVQbvofip6kIz+mX5TUH7k=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_google_uuid",
        importpath = "github.com/google/uuid",
        sum = "h1:EVhdT+1Kseyi1/pUmXKaFxYsDNy9RQYkMWRH68J/W7Y=",
        version = "v1.1.2",
    )
    go_repository(
        name = "com_github_google_wire",
        importpath = "github.com/google/wire",
        sum = "h1:imGQZGEVEHpje5056+K+cgdO72p0LQv2xIIFXNGUf60=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_googleapis_gax_go",
        importpath = "github.com/googleapis/gax-go",
        sum = "h1:silFMLAnr330+NRuag/VjIGF7TLp/LBrV2CJKFLWEww=",
        version = "v2.0.2+incompatible",
    )
    go_repository(
        name = "com_github_googleapis_gax_go_v2",
        importpath = "github.com/googleapis/gax-go/v2",
        sum = "h1:sjZBwGj9Jlw33ImPtvFviGYvseOtDM7hkSKB7+Tv3SM=",
        version = "v2.0.5",
    )

    go_repository(
        name = "com_github_googlecloudplatform_cloudsql_proxy",
        importpath = "github.com/GoogleCloudPlatform/cloudsql-proxy",
        sum = "h1:sTOp2Ajiew5XIH92YSdwhYc+bgpUX5j5TKK/Ac8Saw8=",
        version = "v0.0.0-20191009163259-e802c2cb94ae",
    )
    go_repository(
        name = "com_github_gopherjs_gopherjs",
        importpath = "github.com/gopherjs/gopherjs",
        sum = "h1:EGx4pi6eqNxGaHF6qqu48+N2wcFQ5qg5FXgOdqsJ5d8=",
        version = "v0.0.0-20181017120253-0766667cb4d1",
    )

    go_repository(
        name = "com_github_gordonklaus_ineffassign",
        importpath = "github.com/gordonklaus/ineffassign",
        sum = "h1:vc7Dmrk4JwS0ZPS6WZvWlwDflgDTA26jItmbSj83nug=",
        version = "v0.0.0-20200309095847-7953dde2c7bf",
    )
    go_repository(
        name = "com_github_goreleaser_goreleaser",
        importpath = "github.com/goreleaser/goreleaser",
        sum = "h1:3ua5fSYvc/doKd5sVTzvXbyqW6H/eyuvy46woLrUFic=",
        version = "v0.134.0",
    )
    go_repository(
        name = "com_github_goreleaser_nfpm",
        importpath = "github.com/goreleaser/nfpm",
        sum = "h1:AEnu9XVmupRDTR930Z2rAs31Mj6sLIPxFcR9ESYvgDA=",
        version = "v1.2.1",
    )
    go_repository(
        name = "com_github_gorilla_context",
        importpath = "github.com/gorilla/context",
        sum = "h1:AWwleXJkX/nhcU9bZSnZoi3h/qGYqQAGhq6zZe/aQW8=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_gorilla_handlers",
        importpath = "github.com/gorilla/handlers",
        sum = "h1:0QniY0USkHQ1RGCLfKxeNHK9bkDHGRYGNDFBCS+YARg=",
        version = "v1.4.2",
    )
    go_repository(
        name = "com_github_gorilla_mux",
        importpath = "github.com/gorilla/mux",
        sum = "h1:VuZ8uybHlWmqV03+zRzdwKL4tUnIp1MAQtp1mIFE1bc=",
        version = "v1.7.4",
    )

    go_repository(
        name = "com_github_gorilla_websocket",
        importpath = "github.com/gorilla/websocket",
        sum = "h1:WDFjx/TMzVgy9VdMMQi2K2Emtwi2QcUQsztZ/zLaH/Q=",
        version = "v1.4.0",
    )
    go_repository(
        name = "com_github_grpc_ecosystem_go_grpc_middleware",
        importpath = "github.com/grpc-ecosystem/go-grpc-middleware",
        sum = "h1:z53tR0945TRRQO/fLEVPI6SMv7ZflF0TEaTAoU7tOzg=",
        version = "v1.0.1-0.20190118093823-f849b5445de4",
    )
    go_repository(
        name = "com_github_grpc_ecosystem_go_grpc_prometheus",
        importpath = "github.com/grpc-ecosystem/go-grpc-prometheus",
        sum = "h1:Ovs26xHkKqVztRpIrF/92BcuyuQ/YW4NSIpoGtfXNho=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_grpc_ecosystem_grpc_gateway",
        importpath = "github.com/grpc-ecosystem/grpc-gateway",
        sum = "h1:UImYN5qQ8tuGpGE16ZmjvcTtTw24zw1QAp/SlnNrZhI=",
        version = "v1.9.5",
    )
    go_repository(
        name = "com_github_hailocab_go_hostpool",
        importpath = "github.com/hailocab/go-hostpool",
        sum = "h1:5upAirOpQc1Q53c0bnx2ufif5kANL7bfZWcc6VJWJd8=",
        version = "v0.0.0-20160125115350-e80d13ce29ed",
    )
    go_repository(
        name = "com_github_hashicorp_consul_api",
        importpath = "github.com/hashicorp/consul/api",
        sum = "h1:HXNYlRkkM/t+Y/Yhxtwcy02dlYwIaoxzvxPnS+cqy78=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_hashicorp_consul_sdk",
        importpath = "github.com/hashicorp/consul/sdk",
        sum = "h1:UOxjlb4xVNF93jak1mzzoBatyFju9nrkxpVwIp/QqxQ=",
        version = "v0.3.0",
    )

    go_repository(
        name = "com_github_hashicorp_errwrap",
        importpath = "github.com/hashicorp/errwrap",
        sum = "h1:hLrqtEDnRye3+sgx6z4qVLNuviH3MR5aQ0ykNJa/UYA=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_hashicorp_go_cleanhttp",
        importpath = "github.com/hashicorp/go-cleanhttp",
        sum = "h1:dH3aiDG9Jvb5r5+bYHsikaOUIpcM0xvgMXVoDkXMzJM=",
        version = "v0.5.1",
    )
    go_repository(
        name = "com_github_hashicorp_go_hclog",
        importpath = "github.com/hashicorp/go-hclog",
        sum = "h1:CG6TE5H9/JXsFWJCfoIVpKFIkFe6ysEuHirp4DxCsHI=",
        version = "v0.9.2",
    )
    go_repository(
        name = "com_github_hashicorp_go_immutable_radix",
        importpath = "github.com/hashicorp/go-immutable-radix",
        sum = "h1:AKDB1HM5PWEA7i4nhcpwOrO2byshxBjXVn/J/3+z5/0=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_msgpack",
        importpath = "github.com/hashicorp/go-msgpack",
        sum = "h1:zKjpN5BK/P5lMYrLmBHdBULWbJ0XpYR+7NGzqkZzoD4=",
        version = "v0.5.3",
    )

    go_repository(
        name = "com_github_hashicorp_go_multierror",
        importpath = "github.com/hashicorp/go-multierror",
        sum = "h1:B9UzwGQJehnUY1yNrnwREHc3fGbC2xefo8g4TbElacI=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_net",
        importpath = "github.com/hashicorp/go.net",
        sum = "h1:sNCoNyDEvN1xa+X0baata4RdcpKwcMS6DH+xwfqPgjw=",
        version = "v0.0.1",
    )

    go_repository(
        name = "com_github_hashicorp_go_retryablehttp",
        importpath = "github.com/hashicorp/go-retryablehttp",
        sum = "h1:BbgctKO892xEyOXnGiaAwIoSq1QZ/SS4AhjoAh9DnfY=",
        version = "v0.6.4",
    )
    go_repository(
        name = "com_github_hashicorp_go_rootcerts",
        importpath = "github.com/hashicorp/go-rootcerts",
        sum = "h1:Rqb66Oo1X/eSV1x66xbDccZjhJigjg0+e82kpwzSwCI=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_sockaddr",
        importpath = "github.com/hashicorp/go-sockaddr",
        sum = "h1:GeH6tui99pF4NJgfnhp+L6+FfobzVW3Ah46sLo0ICXs=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_syslog",
        importpath = "github.com/hashicorp/go-syslog",
        sum = "h1:KaodqZuhUoZereWVIYmpUgZysurB1kBLX2j0MwMrUAE=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_uuid",
        importpath = "github.com/hashicorp/go-uuid",
        sum = "h1:fv1ep09latC32wFoVwnqcnKJGnMSdBanPczbHAYm1BE=",
        version = "v1.0.1",
    )

    go_repository(
        name = "com_github_hashicorp_go_version",
        importpath = "github.com/hashicorp/go-version",
        sum = "h1:3vNe/fWF5CBgRIguda1meWhsZHy3m8gCJ5wx+dIzX/E=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_hashicorp_golang_lru",
        importpath = "github.com/hashicorp/golang-lru",
        sum = "h1:0hERBMJE1eitiLkihrMvRVBYAkpHzc/J3QdDN+dAcgU=",
        version = "v0.5.1",
    )

    go_repository(
        name = "com_github_hashicorp_hcl",
        importpath = "github.com/hashicorp/hcl",
        sum = "h1:0Anlzjpi4vEasTeNFn2mLJgTSwt0+6sfsiTG8qcWGx4=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_logutils",
        importpath = "github.com/hashicorp/logutils",
        sum = "h1:dLEQVugN8vlakKOUE3ihGLTZJRB4j+M2cdTm/ORI65Y=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_mdns",
        importpath = "github.com/hashicorp/mdns",
        sum = "h1:WhIgCr5a7AaVH6jPUwjtRuuE7/RDufnUvzIr48smyxs=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_memberlist",
        importpath = "github.com/hashicorp/memberlist",
        sum = "h1:EmmoJme1matNzb+hMpDuR/0sbJSUisxyqBGG676r31M=",
        version = "v0.1.3",
    )
    go_repository(
        name = "com_github_hashicorp_serf",
        importpath = "github.com/hashicorp/serf",
        sum = "h1:YZ7UKsJv+hKjqGVUUbtE3HNj79Eln2oQ75tniF6iPt0=",
        version = "v0.8.2",
    )

    go_repository(
        name = "com_github_hpcloud_tail",
        importpath = "github.com/hpcloud/tail",
        sum = "h1:nfCOvKYfkgYP8hkirhJocXT2+zOD8yUNjXaWfTlyFKI=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hudl_fargo",
        importpath = "github.com/hudl/fargo",
        sum = "h1:0U6+BtN6LhaYuTnIJq4Wyq5cpn6O2kWrxAtcqBmYY6w=",
        version = "v1.3.0",
    )

    go_repository(
        name = "com_github_ianlancetaylor_demangle",
        importpath = "github.com/ianlancetaylor/demangle",
        sum = "h1:UDMh68UUwekSh5iP2OMhRRZJiiBccgV7axzUG8vi56c=",
        version = "v0.0.0-20181102032728-5e5cf60278f6",
    )

    go_repository(
        name = "com_github_imdario_mergo",
        importpath = "github.com/imdario/mergo",
        sum = "h1:UauaLniWCFHWd+Jp9oCEkTBj8VO/9DKg3PV3VCNMDIg=",
        version = "v0.3.9",
    )
    go_repository(
        name = "com_github_inconshreveable_mousetrap",
        importpath = "github.com/inconshreveable/mousetrap",
        sum = "h1:Z8tu5sraLXCXIcARxBp/8cbvlwVa7Z1NHg9XEKhtSvM=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_influxdata_influxdb1_client",
        importpath = "github.com/influxdata/influxdb1-client",
        sum = "h1:/WZQPMZNsjZ7IlCpsLGdQBINg5bxKQ1K1sh6awxLtkA=",
        version = "v0.0.0-20191209144304-8bf82d3c094d",
    )

    go_repository(
        name = "com_github_jackc_chunkreader",
        importpath = "github.com/jackc/chunkreader",
        sum = "h1:4s39bBR8ByfqH+DKm8rQA3E1LHZWB9XWcrz8fqaZbe0=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_jackc_chunkreader_v2",
        importpath = "github.com/jackc/chunkreader/v2",
        sum = "h1:i+RDz65UE+mmpjTfyz0MoVTnzeYxroil2G82ki7MGG8=",
        version = "v2.0.1",
    )
    go_repository(
        name = "com_github_jackc_pgconn",
        importpath = "github.com/jackc/pgconn",
        sum = "h1:ySBX7Q87vOMqKU2bbmKbUvtYhauDFclYbNDYIE1/h6s=",
        version = "v1.8.1",
    )
    go_repository(
        name = "com_github_jackc_pgio",
        importpath = "github.com/jackc/pgio",
        sum = "h1:g12B9UwVnzGhueNavwioyEEpAmqMe1E/BN9ES+8ovkE=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_jackc_pgmock",
        importpath = "github.com/jackc/pgmock",
        sum = "h1:JVX6jT/XfzNqIjye4717ITLaNwV9mWbJx0dLCpcRzdA=",
        version = "v0.0.0-20190831213851-13a1b77aafa2",
    )
    go_repository(
        name = "com_github_jackc_pgpassfile",
        importpath = "github.com/jackc/pgpassfile",
        sum = "h1:/6Hmqy13Ss2zCq62VdNG8tM1wchn8zjSGOBJ6icpsIM=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_jackc_pgproto3",
        importpath = "github.com/jackc/pgproto3",
        sum = "h1:FYYE4yRw+AgI8wXIinMlNjBbp/UitDJwfj5LqqewP1A=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_jackc_pgproto3_v2",
        importpath = "github.com/jackc/pgproto3/v2",
        sum = "h1:b1105ZGEMFe7aCvrT1Cca3VoVb4ZFMaFJLJcg/3zD+8=",
        version = "v2.0.6",
    )
    go_repository(
        name = "com_github_jackc_pgservicefile",
        importpath = "github.com/jackc/pgservicefile",
        sum = "h1:C8S2+VttkHFdOOCXJe+YGfa4vHYwlt4Zx+IVXQ97jYg=",
        version = "v0.0.0-20200714003250-2b9c44734f2b",
    )
    go_repository(
        name = "com_github_jackc_pgtype",
        importpath = "github.com/jackc/pgtype",
        sum = "h1:6f4kVsW01QftE38ufBYxKciO6gyioXSC0ABIRLcZrGs=",
        version = "v1.7.0",
    )
    go_repository(
        name = "com_github_jackc_pgx",
        importpath = "github.com/jackc/pgx",
        sum = "h1:2zP5OD7kiyR3xzRYMhOcXVvkDZsImVXfj+yIyTQf3/o=",
        version = "v3.6.2+incompatible",
    )
    go_repository(
        name = "com_github_jackc_pgx_v4",
        importpath = "github.com/jackc/pgx/v4",
        sum = "h1:J86tSWd3Y7nKjwT/43xZBvpi04keQWx8gNC2YkdJhZI=",
        version = "v4.11.0",
    )
    go_repository(
        name = "com_github_jackc_puddle",
        importpath = "github.com/jackc/puddle",
        sum = "h1:JnPg/5Q9xVJGfjsO5CPUOjnJps1JaRUm8I9FXVCFK94=",
        version = "v1.1.3",
    )

    go_repository(
        name = "com_github_jarcoal_httpmock",
        importpath = "github.com/jarcoal/httpmock",
        sum = "h1:cHtVEcTxRSX4J0je7mWPfc9BpDpqzXSJ5HbymZmyHck=",
        version = "v1.0.5",
    )
    go_repository(
        name = "com_github_jhump_protoreflect",
        importpath = "github.com/jhump/protoreflect",
        sum = "h1:qJ7piXPrjP3mDrfHf5ATkxfLix8ANs226vpo0aACOn0=",
        version = "v1.7.0",
    )
    go_repository(
        name = "com_github_jmespath_go_jmespath",
        importpath = "github.com/jmespath/go-jmespath",
        sum = "h1:pmfjZENx5imkbgOkpRUYLnmbU7UEFbjtDA2hxJ1ichM=",
        version = "v0.0.0-20180206201540-c2b33e8439af",
    )
    go_repository(
        name = "com_github_jmoiron_sqlx",
        importpath = "github.com/jmoiron/sqlx",
        sum = "h1:41Ip0zITnmWNR/vHV+S4m+VoUivnWY5E4OJfLZjCJMA=",
        version = "v1.2.0",
    )

    go_repository(
        name = "com_github_joho_godotenv",
        importpath = "github.com/joho/godotenv",
        sum = "h1:Zjp+RcGpHhGlrMbJzXTrZZPrWj+1vfm90La1wgB6Bhc=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_jonboulle_clockwork",
        importpath = "github.com/jonboulle/clockwork",
        sum = "h1:VKV+ZcuP6l3yW9doeqz6ziZGgcynBVQO+obU0+0hcPo=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_jpillora_backoff",
        importpath = "github.com/jpillora/backoff",
        sum = "h1:K//n/AqR5HjG3qxbrBCL4vJPW0MVFSs9CPK1OOJdRME=",
        version = "v0.0.0-20180909062703-3050d21c67d7",
    )
    go_repository(
        name = "com_github_json_iterator_go",
        importpath = "github.com/json-iterator/go",
        sum = "h1:QiWkFLKq0T7mpzwOTu6BzNDbfTE8OLrYhVKYMLF46Ok=",
        version = "v1.1.8",
    )

    go_repository(
        name = "com_github_jstemmer_go_junit_report",
        importpath = "github.com/jstemmer/go-junit-report",
        sum = "h1:6QPYqodiu3GuPL+7mfx+NwDdp2eTkp9IfEUpgAwUN0o=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_jteeuwen_go_bindata",
        importpath = "github.com/jteeuwen/go-bindata",
        sum = "h1:91Uy4d9SYVr1kyTJ15wJsog+esAZZl7JmEfTkwmhJts=",
        version = "v3.0.7+incompatible",
    )
    go_repository(
        name = "com_github_jtolds_gls",
        importpath = "github.com/jtolds/gls",
        sum = "h1:xdiiI2gbIgH/gLH7ADydsJ1uDOEzR8yvV7C0MuV77Wo=",
        version = "v4.20.0+incompatible",
    )

    go_repository(
        name = "com_github_julienschmidt_httprouter",
        importpath = "github.com/julienschmidt/httprouter",
        sum = "h1:TDTW5Yz1mjftljbcKqRcrYhd4XeOoI98t+9HbQbYf7g=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_k0kubun_colorstring",
        importpath = "github.com/k0kubun/colorstring",
        sum = "h1:uC1QfSlInpQF+M0ao65imhwqKnz3Q2z/d8PWZRMQvDM=",
        version = "v0.0.0-20150214042306-9440f1994b88",
    )
    go_repository(
        name = "com_github_k0kubun_pp",
        importpath = "github.com/k0kubun/pp",
        sum = "h1:EKhKbi34VQDWJtq+zpsKSEhkHHs9w2P8Izbq8IhLVSo=",
        version = "v2.3.0+incompatible",
    )

    go_repository(
        name = "com_github_kardianos_osext",
        importpath = "github.com/kardianos/osext",
        sum = "h1:iQTw/8FWTuc7uiaSepXwyf3o52HaUYcV+Tu66S3F5GA=",
        version = "v0.0.0-20190222173326-2bc1f35cddc0",
    )
    go_repository(
        name = "com_github_kisielk_errcheck",
        importpath = "github.com/kisielk/errcheck",
        sum = "h1:reN85Pxc5larApoH1keMBiu2GWtPqXQ1nc9gx+jOU+E=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_kisielk_gotool",
        importpath = "github.com/kisielk/gotool",
        sum = "h1:AV2c/EiW3KqPNT9ZKl07ehoAGi4C5/01Cfbblndcapg=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_knetic_govaluate",
        importpath = "github.com/Knetic/govaluate",
        sum = "h1:1G1pk05UrOh0NlF1oeaaix1x8XzrfjIDK47TY0Zehcw=",
        version = "v3.0.1-0.20171022003610-9aa49832a739+incompatible",
    )

    go_repository(
        name = "com_github_konsorten_go_windows_terminal_sequences",
        importpath = "github.com/konsorten/go-windows-terminal-sequences",
        sum = "h1:CE8S1cTafDpPvMhIxNJKvHsGVBgn1xWYf1NbHQhywc8=",
        version = "v1.0.3",
    )
    go_repository(
        name = "com_github_kr_logfmt",
        importpath = "github.com/kr/logfmt",
        sum = "h1:T+h1c/A9Gawja4Y9mFVWj2vyii2bbUNDw3kt9VxK2EY=",
        version = "v0.0.0-20140226030751-b84e30acd515",
    )
    go_repository(
        name = "com_github_kr_pretty",
        importpath = "github.com/kr/pretty",
        sum = "h1:L/CwN0zerZDmRFUapSPitk6f+Q3+0za1rQkzVuMiMFI=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_kr_pty",
        importpath = "github.com/kr/pty",
        sum = "h1:AkaSdXYQOWeaO3neb8EM634ahkXXe3jYbVh/F9lq+GI=",
        version = "v1.1.8",
    )
    go_repository(
        name = "com_github_kr_text",
        importpath = "github.com/kr/text",
        sum = "h1:45sCR5RtlFHMR4UwH9sdQ5TC8v0qDQCHnXt+kaKSTVE=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_ktrysmt_go_bitbucket",
        importpath = "github.com/ktrysmt/go-bitbucket",
        sum = "h1:C8dUGp0qkwncKtAnozHCbbqhptefzEd1I0sfnuy9rYQ=",
        version = "v0.6.4",
    )

    go_repository(
        name = "com_github_lann_builder",
        importpath = "github.com/lann/builder",
        sum = "h1:SOEGU9fKiNWd/HOJuq6+3iTQz8KNCLtVX6idSoTLdUw=",
        version = "v0.0.0-20180802200727-47ae307949d0",
    )
    go_repository(
        name = "com_github_lann_ps",
        importpath = "github.com/lann/ps",
        sum = "h1:P6pPBnrTSX3DEVR4fDembhRWSsG5rVo6hYhAB/ADZrk=",
        version = "v0.0.0-20150810152359-62de8c46ede0",
    )
    go_repository(
        name = "com_github_lib_pq",
        importpath = "github.com/lib/pq",
        sum = "h1:9xohqzkUwzR4Ga4ivdTcawVS89YSDVxXMa3xJX3cGzg=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_github_lightstep_lightstep_tracer_common_golang_gogo",
        importpath = "github.com/lightstep/lightstep-tracer-common/golang/gogo",
        sum = "h1:143Bb8f8DuGWck/xpNUOckBVYfFbBTnLevfRZ1aVVqo=",
        version = "v0.0.0-20190605223551-bc2310a04743",
    )
    go_repository(
        name = "com_github_lightstep_lightstep_tracer_go",
        importpath = "github.com/lightstep/lightstep-tracer-go",
        sum = "h1:vi1F1IQ8N7hNWytK9DpJsUfQhGuNSc19z330K6vl4zk=",
        version = "v0.18.1",
    )
    go_repository(
        name = "com_github_lyft_protoc_gen_validate",
        importpath = "github.com/lyft/protoc-gen-validate",
        sum = "h1:KNt/RhmQTOLr7Aj8PsJ7mTronaFyx80mRTT9qF261dA=",
        version = "v0.0.13",
    )

    go_repository(
        name = "com_github_magefile_mage",
        importpath = "github.com/magefile/mage",
        sum = "h1:3HiXzCUY12kh9bIuyXShaVe529fJfyqoVM42o/uom2g=",
        version = "v1.10.0",
    )

    go_repository(
        name = "com_github_magiconair_properties",
        importpath = "github.com/magiconair/properties",
        sum = "h1:LLgXmsheXeRoUOBOjtwPQCWIYqM/LU1ayDtDePerRcY=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_github_markbates_pkger",
        importpath = "github.com/markbates/pkger",
        sum = "h1:3MPelV53RnGSW07izx5xGxl4e/sdRD6zqseIk0rMASY=",
        version = "v0.15.1",
    )

    go_repository(
        name = "com_github_masterminds_semver_v3",
        importpath = "github.com/Masterminds/semver/v3",
        sum = "h1:hLg3sBzpNErnxhQtUy/mmLR2I9foDujNK030IGemrRc=",
        version = "v3.1.1",
    )
    go_repository(
        name = "com_github_masterminds_squirrel",
        importpath = "github.com/Masterminds/squirrel",
        sum = "h1:JukIZisrUXadA9pl3rMkjhiamxiB0cXiu+HGp/Y8cY8=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_mattn_go_colorable",
        importpath = "github.com/mattn/go-colorable",
        sum = "h1:6Su7aK7lXmJ/U79bYtBjLNaha4Fs1Rg9plHpcH+vvnE=",
        version = "v0.1.6",
    )

    go_repository(
        name = "com_github_mattn_go_ieproxy",
        importpath = "github.com/mattn/go-ieproxy",
        sum = "h1:HfxbT6/JcvIljmERptWhwa8XzP7H3T+Z2N26gTsaDaA=",
        version = "v0.0.0-20190610004146-91bb50d98149",
    )
    go_repository(
        name = "com_github_mattn_go_isatty",
        importpath = "github.com/mattn/go-isatty",
        sum = "h1:wuysRhFDzyxgEmMf5xjvJ2M9dZoWAXNNr5LSBS7uHXY=",
        version = "v0.0.12",
    )
    go_repository(
        name = "com_github_mattn_go_runewidth",
        importpath = "github.com/mattn/go-runewidth",
        sum = "h1:UnlwIPBGaTZfPQ6T1IGzPI0EkYAQmT9fAEJ/poFC63o=",
        version = "v0.0.2",
    )

    go_repository(
        name = "com_github_mattn_go_shellwords",
        importpath = "github.com/mattn/go-shellwords",
        sum = "h1:Y7Xqm8piKOO3v10Thp7Z36h4FYFjt5xB//6XvOrs2Gw=",
        version = "v1.0.10",
    )
    go_repository(
        name = "com_github_mattn_go_sqlite3",
        importpath = "github.com/mattn/go-sqlite3",
        sum = "h1:jbhqpg7tQe4SupckyijYiy0mJJ/pRyHvXf7JdWK860o=",
        version = "v1.10.0",
    )

    go_repository(
        name = "com_github_mattn_go_zglob",
        importpath = "github.com/mattn/go-zglob",
        sum = "h1:xsEx/XUoVlI6yXjqBK062zYhRTZltCNmYPx6v+8DNaY=",
        version = "v0.0.1",
    )
    go_repository(
        name = "com_github_matttproud_golang_protobuf_extensions",
        importpath = "github.com/matttproud/golang_protobuf_extensions",
        sum = "h1:4hp9jkHxhMHkqkrB3Ix0jegS5sx/RkqARlsWZ6pIwiU=",
        version = "v1.0.1",
    )

    go_repository(
        name = "com_github_mgutz_ansi",
        importpath = "github.com/mgutz/ansi",
        sum = "h1:j7+1HpAFS1zy5+Q4qx1fWh90gTKwiN4QCGoY9TWyyO4=",
        version = "v0.0.0-20170206155736-9520e82c474b",
    )
    go_repository(
        name = "com_github_microsoft_go_winio",
        importpath = "github.com/Microsoft/go-winio",
        sum = "h1:ygIc8M6trr62pF5DucadTWGdEB4mEyvzi0e2nbcmcyA=",
        version = "v0.4.15-0.20190919025122-fc70bd9a86b5",
    )
    go_repository(
        name = "com_github_miekg_dns",
        importpath = "github.com/miekg/dns",
        sum = "h1:9jZdLNd/P4+SfEJ0TNyxYpsK8N4GtfylBLqtbYN1sbA=",
        version = "v1.0.14",
    )
    go_repository(
        name = "com_github_mitchellh_cli",
        importpath = "github.com/mitchellh/cli",
        sum = "h1:iGBIsUe3+HZ/AD/Vd7DErOt5sU9fa8Uj7A2s1aggv1Y=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_mitchellh_go_homedir",
        importpath = "github.com/mitchellh/go-homedir",
        sum = "h1:lukF9ziXFxDFPkA1vsr5zpc1XuPDn/wFntq5mG+4E0Y=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_mitchellh_go_testing_interface",
        importpath = "github.com/mitchellh/go-testing-interface",
        sum = "h1:fzU/JVNcaqHQEcVFAKeR41fkiLdIPrefOvVG1VZ96U0=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_mitchellh_gox",
        importpath = "github.com/mitchellh/gox",
        sum = "h1:lfGJxY7ToLJQjHHwi0EX6uYBdK78egf954SQl13PQJc=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_mitchellh_iochan",
        importpath = "github.com/mitchellh/iochan",
        sum = "h1:C+X3KsSTLFVBr/tK1eYN/vs4rJcvsiLU338UhYPJWeY=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_mitchellh_mapstructure",
        importpath = "github.com/mitchellh/mapstructure",
        sum = "h1:fmNYVwqnSfB9mZU6OS2O6GsXM+wcskZDuKQzvN1EDeE=",
        version = "v1.1.2",
    )
    go_repository(
        name = "com_github_moby_term",
        importpath = "github.com/moby/term",
        sum = "h1:SPoLlS9qUUnXcIY4pvA4CTwYjk0Is5f4UPEkeESr53k=",
        version = "v0.0.0-20200915141129-7f0af18e79f2",
    )
    go_repository(
        name = "com_github_modern_go_concurrent",
        importpath = "github.com/modern-go/concurrent",
        sum = "h1:TRLaZ9cD/w8PVh93nsPXa1VrQ6jlwL5oN8l14QlcNfg=",
        version = "v0.0.0-20180306012644-bacd9c7ef1dd",
    )
    go_repository(
        name = "com_github_modern_go_reflect2",
        importpath = "github.com/modern-go/reflect2",
        sum = "h1:9f412s+6RmYXLWZSEzVVgPGK7C2PphHj5RJrvfx9AWI=",
        version = "v1.0.1",
    )

    go_repository(
        name = "com_github_morikuni_aec",
        importpath = "github.com/morikuni/aec",
        sum = "h1:nP9CBfwrvYnBRgY6qfDQkygYDmYwOilePFkwzv4dU8A=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_mutecomm_go_sqlcipher_v4",
        importpath = "github.com/mutecomm/go-sqlcipher/v4",
        sum = "h1:sV1tWCWGAVlPhNGT95Q+z/txFxuhAYWwHD1afF5bMZg=",
        version = "v4.4.0",
    )

    go_repository(
        name = "com_github_mwitkow_go_conntrack",
        importpath = "github.com/mwitkow/go-conntrack",
        sum = "h1:F9x/1yl3T2AeKLr2AMdilSD8+f9bvMnNN8VS5iDtovc=",
        version = "v0.0.0-20161129095857-cc309e4a2223",
    )
    go_repository(
        name = "com_github_nakagami_firebirdsql",
        importpath = "github.com/nakagami/firebirdsql",
        sum = "h1:P48LjvUQpTReR3TQRbxSeSBsMXzfK0uol7eRcr7VBYQ=",
        version = "v0.0.0-20190310045651-3c02a58cfed8",
    )
    go_repository(
        name = "com_github_nats_io_jwt",
        importpath = "github.com/nats-io/jwt",
        sum = "h1:+RB5hMpXUUA2dfxuhBTEkMOrYmM+gKIZYS1KjSostMI=",
        version = "v0.3.2",
    )
    go_repository(
        name = "com_github_nats_io_nats_go",
        importpath = "github.com/nats-io/nats.go",
        sum = "h1:ik3HbLhZ0YABLto7iX80pZLPw/6dx3T+++MZJwLnMrQ=",
        version = "v1.9.1",
    )
    go_repository(
        name = "com_github_nats_io_nats_server_v2",
        importpath = "github.com/nats-io/nats-server/v2",
        sum = "h1:i2Ly0B+1+rzNZHHWtD4ZwKi+OU5l+uQo1iDHZ2PmiIc=",
        version = "v2.1.2",
    )
    go_repository(
        name = "com_github_nats_io_nkeys",
        importpath = "github.com/nats-io/nkeys",
        sum = "h1:6JrEfig+HzTH85yxzhSVbjHRJv9cn0p6n3IngIcM5/k=",
        version = "v0.1.3",
    )
    go_repository(
        name = "com_github_nats_io_nuid",
        importpath = "github.com/nats-io/nuid",
        sum = "h1:5iA8DT8V7q8WK2EScv2padNa/rTESc1KdnPw4TC2paw=",
        version = "v1.0.1",
    )

    go_repository(
        name = "com_github_neo4j_drivers_gobolt",
        importpath = "github.com/neo4j-drivers/gobolt",
        sum = "h1:80c7W+vtw39ES9Q85q9GZh4tJo+1MpQGpFTuo28CP+Y=",
        version = "v1.7.4",
    )
    go_repository(
        name = "com_github_neo4j_neo4j_go_driver",
        importpath = "github.com/neo4j/neo4j-go-driver",
        sum = "h1:fhFP5RliM2HW/8XdcO5QngSfFli9GcRIpMXvypTQt6E=",
        version = "v1.8.1-0.20200803113522-b626aa943eba",
    )

    go_repository(
        name = "com_github_nishanths_predeclared",
        importpath = "github.com/nishanths/predeclared",
        sum = "h1:3f0nxAmdj/VoCGN/ijdMy7bj6SBagaqYg1B0hu8clMA=",
        version = "v0.0.0-20200524104333-86fad755b4d3",
    )

    go_repository(
        name = "com_github_nvveen_gotty",
        importpath = "github.com/Nvveen/Gotty",
        sum = "h1:TngWCqHvy9oXAN6lEVMRuU21PR1EtLVZJmdB18Gu3Rw=",
        version = "v0.0.0-20120604004816-cd527374f1e5",
    )
    go_repository(
        name = "com_github_oklog_oklog",
        importpath = "github.com/oklog/oklog",
        sum = "h1:wVfs8F+in6nTBMkA7CbRw+zZMIB7nNM825cM1wuzoTk=",
        version = "v0.3.2",
    )
    go_repository(
        name = "com_github_oklog_run",
        importpath = "github.com/oklog/run",
        sum = "h1:Ru7dDtJNOyC66gQ5dQmaCa0qIsAUFY3sFpK1Xk8igrw=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_oklog_ulid",
        importpath = "github.com/oklog/ulid",
        sum = "h1:EGfNDEx6MqHz8B3uNV6QAib1UR2Lm97sHi3ocA6ESJ4=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_github_olekukonko_tablewriter",
        importpath = "github.com/olekukonko/tablewriter",
        sum = "h1:58+kh9C6jJVXYjt8IE48G2eWl6BjwU5Gj0gqY84fy78=",
        version = "v0.0.0-20170122224234-a0225b3f23b5",
    )

    go_repository(
        name = "com_github_oneofone_xxhash",
        importpath = "github.com/OneOfOne/xxhash",
        sum = "h1:KMrpdQIwFcEqXDklaen+P1axHaj9BSKzvpUUfnHldSE=",
        version = "v1.2.2",
    )
    go_repository(
        name = "com_github_onsi_ginkgo",
        importpath = "github.com/onsi/ginkgo",
        sum = "h1:Iw5WCbBcaAAd0fpRb1c9r5YCylv4XDoCSigm1zLevwU=",
        version = "v1.12.0",
    )
    go_repository(
        name = "com_github_onsi_gomega",
        importpath = "github.com/onsi/gomega",
        sum = "h1:R1uwffexN6Pr340GtYRIdZmAiN4J+iw6WG4wog1DUXg=",
        version = "v1.9.0",
    )

    go_repository(
        name = "com_github_op_go_logging",
        importpath = "github.com/op/go-logging",
        sum = "h1:lDH9UUVJtmYCjyT0CI4q8xvlXPxeZ0gYCVvWbmPlp88=",
        version = "v0.0.0-20160315200505-970db520ece7",
    )
    go_repository(
        name = "com_github_opencontainers_go_digest",
        importpath = "github.com/opencontainers/go-digest",
        sum = "h1:apOUWs51W5PlhuyGyz9FCeeBIOUDA/6nW8Oi/yOhh5U=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_opencontainers_image_spec",
        importpath = "github.com/opencontainers/image-spec",
        sum = "h1:JMemWkRwHx4Zj+fVxWoMCFm/8sYGGrUVojFA6h/TRcI=",
        version = "v1.0.1",
    )

    go_repository(
        name = "com_github_opencontainers_runc",
        importpath = "github.com/opencontainers/runc",
        sum = "h1:/k06BMULKF5hidyoZymkoDCzdJzltZpz/UU4LguQVtc=",
        version = "v1.0.0-rc9",
    )
    go_repository(
        name = "com_github_opentracing_basictracer_go",
        importpath = "github.com/opentracing/basictracer-go",
        sum = "h1:YyUAhaEfjoWXclZVJ9sGoNct7j4TVk7lZWlQw5UXuoo=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_opentracing_contrib_go_observer",
        importpath = "github.com/opentracing-contrib/go-observer",
        sum = "h1:lM6RxxfUMrYL/f8bWEUqdXrANWtrL7Nndbm9iFN0DlU=",
        version = "v0.0.0-20170622124052-a52f23424492",
    )
    go_repository(
        name = "com_github_opentracing_opentracing_go",
        importpath = "github.com/opentracing/opentracing-go",
        sum = "h1:pWlfV3Bxv7k65HYwkikxat0+s3pV4bsqf19k25Ur8rU=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_openzipkin_contrib_zipkin_go_opentracing",
        importpath = "github.com/openzipkin-contrib/zipkin-go-opentracing",
        sum = "h1:ZCnq+JUrvXcDVhX/xRolRBZifmabN1HcS1wrPSvxhrU=",
        version = "v0.4.5",
    )

    go_repository(
        name = "com_github_openzipkin_zipkin_go",
        importpath = "github.com/openzipkin/zipkin-go",
        sum = "h1:nY8Hti+WKaP0cRsSeQ026wU03QsM762XBeCXBb9NAWI=",
        version = "v0.2.2",
    )

    go_repository(
        name = "com_github_ory_dockertest_v3",
        importpath = "github.com/ory/dockertest/v3",
        sum = "h1:L8JWiGgR+fnj90AEOkTFIEp4j5uWAK72P3IUsYgn2cs=",
        version = "v3.6.3",
    )
    go_repository(
        name = "com_github_pact_foundation_pact_go",
        importpath = "github.com/pact-foundation/pact-go",
        sum = "h1:OYkFijGHoZAYbOIb1LWXrwKQbMMRUv1oQ89blD2Mh2Q=",
        version = "v1.0.4",
    )
    go_repository(
        name = "com_github_pascaldekloe_goe",
        importpath = "github.com/pascaldekloe/goe",
        sum = "h1:Lgl0gzECD8GnQ5QCWA8o6BtfL6mDH5rQgM4/fX3avOs=",
        version = "v0.0.0-20180627143212-57f6aae5913c",
    )
    go_repository(
        name = "com_github_pborman_uuid",
        importpath = "github.com/pborman/uuid",
        sum = "h1:J7Q5mO4ysT1dv8hyrUGHb9+ooztCXu1D8MY8DZYsu3g=",
        version = "v1.2.0",
    )

    go_repository(
        name = "com_github_pelletier_go_toml",
        importpath = "github.com/pelletier/go-toml",
        sum = "h1:T5zMGML61Wp+FlcbWjRDT7yAxhJNAiPPLOFECq181zc=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_performancecopilot_speed",
        importpath = "github.com/performancecopilot/speed",
        sum = "h1:2WnRzIquHa5QxaJKShDkLM+sc0JPuwhXzK8OYOyt3Vg=",
        version = "v3.0.0+incompatible",
    )

    go_repository(
        name = "com_github_pierrec_lz4",
        importpath = "github.com/pierrec/lz4",
        sum = "h1:2xWsjqPFWcplujydGg4WmhC/6fZqK42wMM8aXeqhl0I=",
        version = "v2.0.5+incompatible",
    )

    go_repository(
        name = "com_github_pkg_browser",
        importpath = "github.com/pkg/browser",
        sum = "h1:49lOXmGaUpV9Fz3gd7TFZY106KVlPVa5jcYD1gaQf98=",
        version = "v0.0.0-20180916011732-0a3d74bf9ce4",
    )
    go_repository(
        name = "com_github_pkg_errors",
        importpath = "github.com/pkg/errors",
        sum = "h1:FEBLx1zS214owpjy7qsBeixbURkuhQAwrK5UwLGTwt4=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_pkg_profile",
        importpath = "github.com/pkg/profile",
        sum = "h1:F++O52m40owAmADcojzM+9gyjmMOY/T4oYJkgFDH8RE=",
        version = "v1.2.1",
    )

    go_repository(
        name = "com_github_pmezard_go_difflib",
        importpath = "github.com/pmezard/go-difflib",
        sum = "h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_posener_complete",
        importpath = "github.com/posener/complete",
        sum = "h1:ccV59UEOTzVDnDUEFdT95ZzHVZ+5+158q8+SJb2QV5w=",
        version = "v1.1.1",
    )

    go_repository(
        name = "com_github_prometheus_client_golang",
        importpath = "github.com/prometheus/client_golang",
        sum = "h1:miYCvYqFXtl/J9FIy8eNpBfYthAEFg+Ys0XyUVEcDsc=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_prometheus_client_model",
        importpath = "github.com/prometheus/client_model",
        sum = "h1:ElTg5tNp4DqfV7UQjDqv2+RJlNzsDtvNAWccbItceIE=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_prometheus_common",
        importpath = "github.com/prometheus/common",
        sum = "h1:L+1lyG48J1zAQXA3RBX/nG/B3gjlHq0zTt2tlbJLyCY=",
        version = "v0.7.0",
    )
    go_repository(
        name = "com_github_prometheus_procfs",
        importpath = "github.com/prometheus/procfs",
        sum = "h1:+fpWZdT24pJBiqJdAwYBjPSk+5YmQzYNPYzQsdzLkt8=",
        version = "v0.0.8",
    )

    go_repository(
        name = "com_github_prometheus_tsdb",
        importpath = "github.com/prometheus/tsdb",
        sum = "h1:YZcsG11NqnK4czYLrWd9mpEuAJIHVQLwdrleYfszMAA=",
        version = "v0.7.1",
    )
    go_repository(
        name = "com_github_rcrowley_go_metrics",
        importpath = "github.com/rcrowley/go-metrics",
        sum = "h1:9ZKAASQSHhDYGoxY8uLVpewe1GDZ2vu2Tr/vTdVAkFQ=",
        version = "v0.0.0-20181016184325-3113b8401b8a",
    )
    go_repository(
        name = "com_github_remyoudompheng_bigfft",
        importpath = "github.com/remyoudompheng/bigfft",
        sum = "h1:HQagqIiBmr8YXawX/le3+O26N+vPPC1PtjaF3mwnook=",
        version = "v0.0.0-20190728182440-6a916e37a237",
    )

    go_repository(
        name = "com_github_rogpeppe_fastuuid",
        importpath = "github.com/rogpeppe/fastuuid",
        sum = "h1:INyGLmTCMGFr6OVIb977ghJvABML2CMVjPoRfNDdYDo=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_rogpeppe_go_internal",
        importpath = "github.com/rogpeppe/go-internal",
        sum = "h1:RR9dF3JtopPvtkroDZuVD7qquD0bnHlKSqaQhgwt8yk=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_rs_xid",
        importpath = "github.com/rs/xid",
        sum = "h1:mhH9Nq+C1fY2l1XIpgxIiUOfNpRBYH1kKcr+qfKgjRc=",
        version = "v1.2.1",
    )
    go_repository(
        name = "com_github_rs_zerolog",
        importpath = "github.com/rs/zerolog",
        sum = "h1:uPRuwkWF4J6fGsJ2R0Gn2jB1EQiav9k3S6CSdygQJXY=",
        version = "v1.15.0",
    )

    go_repository(
        name = "com_github_russross_blackfriday_v2",
        importpath = "github.com/russross/blackfriday/v2",
        sum = "h1:lPqVAte+HuHNfhJ/0LC98ESWRz8afy9tM/0RK8m9o+Q=",
        version = "v2.0.1",
    )
    go_repository(
        name = "com_github_ryanuber_columnize",
        importpath = "github.com/ryanuber/columnize",
        sum = "h1:UFr9zpz4xgTnIE5yIMtWAMngCdZ9p/+q6lTbgelo80M=",
        version = "v0.0.0-20160712163229-9b3edd62028f",
    )
    go_repository(
        name = "com_github_samuel_go_zookeeper",
        importpath = "github.com/samuel/go-zookeeper",
        sum = "h1:p3Vo3i64TCLY7gIfzeQaUJ+kppEO5WQG3cL8iE8tGHU=",
        version = "v0.0.0-20190923202752-2cc03de413da",
    )

    go_repository(
        name = "com_github_sassoftware_go_rpmutils",
        importpath = "github.com/sassoftware/go-rpmutils",
        sum = "h1:+gCnWOZV8Z/8jehJ2CdqB47Z3S+SREmQcuXkRFLNsiI=",
        version = "v0.0.0-20190420191620-a8f1baeba37b",
    )
    go_repository(
        name = "com_github_satori_go_uuid",
        importpath = "github.com/satori/go.uuid",
        sum = "h1:0uYX9dsZ2yD7q2RtLRtPSdGDWzjeM3TbMJP9utgA0ww=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_sean_seed",
        importpath = "github.com/sean-/seed",
        sum = "h1:nn5Wsu0esKSJiIVhscUtVbo7ada43DJhG55ua/hjS5I=",
        version = "v0.0.0-20170313163322-e2103e2c3529",
    )

    go_repository(
        name = "com_github_sergi_go_diff",
        importpath = "github.com/sergi/go-diff",
        sum = "h1:Kpca3qRNrduNnOQeazBd0ysaKrUJiIuISHxogkT9RPQ=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_shopify_sarama",
        importpath = "github.com/Shopify/sarama",
        sum = "h1:9oksLxC6uxVPHPVYUmq6xhr1BOF/hHobWH2UzO67z1s=",
        version = "v1.19.0",
    )
    go_repository(
        name = "com_github_shopify_toxiproxy",
        importpath = "github.com/Shopify/toxiproxy",
        sum = "h1:TKdv8HiTLgE5wdJuEML90aBgNWsokNbMijUGhmcoBJc=",
        version = "v2.1.4+incompatible",
    )
    go_repository(
        name = "com_github_shopspring_decimal",
        importpath = "github.com/shopspring/decimal",
        sum = "h1:jUIKcSPO9MoMJBbEoyE/RJoE8vz7Mb8AjvifMMwSyvY=",
        version = "v0.0.0-20200227202807-02e2044944cc",
    )

    go_repository(
        name = "com_github_shurcool_sanitized_anchor_name",
        importpath = "github.com/shurcooL/sanitized_anchor_name",
        sum = "h1:PdmoCO6wvbs+7yrJyMORt4/BmY5IYyJwS/kOiWx8mHo=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_sirupsen_logrus",
        importpath = "github.com/sirupsen/logrus",
        sum = "h1:dJKuHgqk1NNQlqoA6BTlM1Wf9DOH3NBjQyu0h9+AZZE=",
        version = "v1.8.1",
    )

    go_repository(
        name = "com_github_smartystreets_assertions",
        importpath = "github.com/smartystreets/assertions",
        sum = "h1:UVQPSSmc3qtTi+zPPkCXvZX9VvW/xT/NsRvKfwY81a8=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_smartystreets_go_aws_auth",
        importpath = "github.com/smartystreets/go-aws-auth",
        sum = "h1:hp2CYQUINdZMHdvTdXtPOY2ainKl4IoMcpAXEf2xj3Q=",
        version = "v0.0.0-20180515143844-0c1422d1fdb9",
    )
    go_repository(
        name = "com_github_smartystreets_goconvey",
        importpath = "github.com/smartystreets/goconvey",
        sum = "h1:fv0U8FUIMPNf1L9lnHLvLhgicrIVChEkdzIKYqbNC9s=",
        version = "v1.6.4",
    )

    go_repository(
        name = "com_github_smartystreets_gunit",
        importpath = "github.com/smartystreets/gunit",
        sum = "h1:RyPDUFcJbvtXlhJPk7v+wnxZRY2EUokhEYl2EJOPToI=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_snowflakedb_glog",
        importpath = "github.com/snowflakedb/glog",
        sum = "h1:CGR1hXCOeoZ1aJhCs8qdKJuEu3xoZnxsLcYoh5Bnr+4=",
        version = "v0.0.0-20180824191149-f5055e6f21ce",
    )
    go_repository(
        name = "com_github_snowflakedb_gosnowflake",
        importpath = "github.com/snowflakedb/gosnowflake",
        sum = "h1:/Ep0cXv4/3o+iXQvh+6CDjHCRPk2AM42l/AMR9PM94Q=",
        version = "v1.3.5",
    )
    go_repository(
        name = "com_github_soheilhy_cmux",
        importpath = "github.com/soheilhy/cmux",
        sum = "h1:jjzc5WVemNEDTLwv9tlmemhC73tI08BNOIGwBOo10Js=",
        version = "v0.1.5",
    )
    go_repository(
        name = "com_github_sony_gobreaker",
        importpath = "github.com/sony/gobreaker",
        sum = "h1:oMnRNZXX5j85zso6xCPRNPtmAycat+WcoKbklScLDgQ=",
        version = "v0.4.1",
    )

    go_repository(
        name = "com_github_spaolacci_murmur3",
        importpath = "github.com/spaolacci/murmur3",
        sum = "h1:qLC7fQah7D6K1B0ujays3HV9gkFtllcxhzImRR7ArPQ=",
        version = "v0.0.0-20180118202830-f09979ecbc72",
    )
    go_repository(
        name = "com_github_spf13_afero",
        importpath = "github.com/spf13/afero",
        sum = "h1:m8/z1t7/fwjysjQRYbP0RD+bUIF/8tJwPdEZsI83ACI=",
        version = "v1.1.2",
    )
    go_repository(
        name = "com_github_spf13_cast",
        importpath = "github.com/spf13/cast",
        sum = "h1:oget//CVOEoFewqQxwr0Ej5yjygnqGkvggSE/gB35Q8=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_spf13_cobra",
        importpath = "github.com/spf13/cobra",
        sum = "h1:6m/oheQuQ13N9ks4hubMG6BnvwOeaJrqSPLahSnczz8=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_spf13_jwalterweatherman",
        importpath = "github.com/spf13/jwalterweatherman",
        sum = "h1:XHEdyB+EcvlqZamSM4ZOMGlc93t6AcsBEu9Gc1vn7yk=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_spf13_pflag",
        importpath = "github.com/spf13/pflag",
        sum = "h1:zPAT6CGy6wXeQ7NtTnaTerfKOsV6V6F8agHXFiazDkg=",
        version = "v1.0.3",
    )

    go_repository(
        name = "com_github_spf13_viper",
        importpath = "github.com/spf13/viper",
        sum = "h1:yXHLWeravcrgGyFSyCgdYpXQ9dR9c/WED3pg1RhxqEU=",
        version = "v1.4.0",
    )
    go_repository(
        name = "com_github_streadway_amqp",
        importpath = "github.com/streadway/amqp",
        sum = "h1:WhxRHzgeVGETMlmVfqhRn8RIeeNoPr2Czh33I4Zdccw=",
        version = "v0.0.0-20190827072141-edfb9018d271",
    )
    go_repository(
        name = "com_github_streadway_handy",
        importpath = "github.com/streadway/handy",
        sum = "h1:AhmOdSHeswKHBjhsLs/7+1voOxT+LLrSk/Nxvk35fug=",
        version = "v0.0.0-20190108123426-d5acb3125c2a",
    )

    go_repository(
        name = "com_github_stretchr_objx",
        importpath = "github.com/stretchr/objx",
        sum = "h1:Hbg2NidpLE8veEBkEZTL3CvlkUIVzuU9jDplZO54c48=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_stretchr_testify",
        importpath = "github.com/stretchr/testify",
        sum = "h1:hDPOHmpOpP40lSULcqw7IrRb/u7w6RpDC9399XyoNd0=",
        version = "v1.6.1",
    )
    go_repository(
        name = "com_github_tidwall_pretty",
        importpath = "github.com/tidwall/pretty",
        sum = "h1:BP2bjP495BBPaBcS5rmqviTfrOkN5rO5ceKAMRZCRFc=",
        version = "v0.0.0-20180105212114-65a9db5fad51",
    )

    go_repository(
        name = "com_github_tj_assert",
        importpath = "github.com/tj/assert",
        sum = "h1:Rw8kxzWo1mr6FSaYXjQELRe88y2KdfynXdnK72rdjtA=",
        version = "v0.0.0-20171129193455-018094318fb0",
    )
    go_repository(
        name = "com_github_tj_go_elastic",
        importpath = "github.com/tj/go-elastic",
        sum = "h1:eGaGNxrtoZf/mBURsnNQKDR7u50Klgcf2eFDQEnc8Bc=",
        version = "v0.0.0-20171221160941-36157cbbebc2",
    )
    go_repository(
        name = "com_github_tj_go_kinesis",
        importpath = "github.com/tj/go-kinesis",
        sum = "h1:m74UWYy+HBs+jMFR9mdZU6shPewugMyH5+GV6LNgW8w=",
        version = "v0.0.0-20171128231115-08b17f58cb1b",
    )
    go_repository(
        name = "com_github_tj_go_spin",
        importpath = "github.com/tj/go-spin",
        sum = "h1:lhdWZsvImxvZ3q1C5OIB7d72DuOwP4O2NdBg9PyzNds=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_tmc_grpc_websocket_proxy",
        importpath = "github.com/tmc/grpc-websocket-proxy",
        sum = "h1:LnC5Kc/wtumK+WB441p7ynQJzVuNRJiqddSIE3IlSEQ=",
        version = "v0.0.0-20190109142713-0ad062ec5ee5",
    )
    go_repository(
        name = "com_github_tmthrgd_go_bindata",
        importpath = "github.com/tmthrgd/go-bindata",
        sum = "h1:fTaLzbXi8Yk24ntb/yp/sEX65EqXYJG4oP3/qPtb6uU=",
        version = "v0.0.0-20190904063317-a4b65675e0fb",
    )

    go_repository(
        name = "com_github_ugorji_go",
        importpath = "github.com/ugorji/go",
        sum = "h1:j4s+tAvLfL3bZyefP2SEWmhBzmuIlH/eqNuPdFPgngw=",
        version = "v1.1.4",
    )
    go_repository(
        name = "com_github_ulikunitz_xz",
        importpath = "github.com/ulikunitz/xz",
        sum = "h1:YvTNdFzX6+W5m9msiYg/zpkSURPPtOlzbqYjrFn7Yt4=",
        version = "v0.5.7",
    )
    go_repository(
        name = "com_github_urfave_cli",
        importpath = "github.com/urfave/cli",
        sum = "h1:+mkCCcOFKPnCmVYVcURKps1Xe+3zP90gSYGNfRkjoIY=",
        version = "v1.22.1",
    )

    go_repository(
        name = "com_github_uw_labs_podrick",
        importpath = "github.com/uw-labs/podrick",
        sum = "h1:UtUWKpKzFK83Hb9eCClFNPKjsvs9hzaho7lRTwFBJVs=",
        version = "v0.4.1",
    )
    go_repository(
        name = "com_github_varlink_go",
        importpath = "github.com/varlink/go",
        sum = "h1:KcTzc0lm6PuIl9sAz5GMSGQyDhbJOa9NC3u69PVIc7Y=",
        version = "v0.0.0-20191018142704-4ecdbb8a36c2",
    )
    go_repository(
        name = "com_github_vividcortex_gohistogram",
        importpath = "github.com/VividCortex/gohistogram",
        sum = "h1:6+hBz+qvs0JOrrNhhmR7lFxo5sINxBCGXrdtl/UvroE=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_xanzy_go_gitlab",
        importpath = "github.com/xanzy/go-gitlab",
        sum = "h1:+nHztQuCXGSMluKe5Q9IRaPdz6tO8O0gMkQ0vqGpiBk=",
        version = "v0.31.0",
    )
    go_repository(
        name = "com_github_xdg_scram",
        importpath = "github.com/xdg/scram",
        sum = "h1:u40Z8hqBAAQyv+vATcGgV0YCnDjqSL7/q/JyPhhJSPk=",
        version = "v0.0.0-20180814205039-7eeb5667e42c",
    )
    go_repository(
        name = "com_github_xdg_stringprep",
        importpath = "github.com/xdg/stringprep",
        sum = "h1:d9X0esnoa3dFsV0FG35rAT0RIhYFlPq7MiP+DW89La0=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_xi2_xz",
        importpath = "github.com/xi2/xz",
        sum = "h1:nIPpBwaJSVYIxUFsDv3M8ofmx9yWTog9BfvIu0q41lo=",
        version = "v0.0.0-20171230120015-48954b6210f8",
    )
    go_repository(
        name = "com_github_xiang90_probing",
        importpath = "github.com/xiang90/probing",
        sum = "h1:eY9dn8+vbi4tKz5Qo6v2eYzo7kUS51QINcR5jNpbZS8=",
        version = "v0.0.0-20190116061207-43a291ad63a2",
    )
    go_repository(
        name = "com_github_xordataexchange_crypt",
        importpath = "github.com/xordataexchange/crypt",
        sum = "h1:ESFSdwYZvkeru3RtdrYueztKhOBCSAAzS4Gf+k0tEow=",
        version = "v0.0.3-0.20170626215501-b2862e3d0a77",
    )
    go_repository(
        name = "com_github_yuin_goldmark",
        importpath = "github.com/yuin/goldmark",
        sum = "h1:5tjfNdR2ki3yYQ842+eX2sQHeiwpKJ0RnHO4IYOc4V8=",
        version = "v1.1.32",
    )
    go_repository(
        name = "com_github_zenazn_goji",
        importpath = "github.com/zenazn/goji",
        sum = "h1:RSQQAbXGArQ0dIDEq+PI6WqN6if+5KHu6x2Cx/GXLTQ=",
        version = "v0.9.0",
    )
    go_repository(
        name = "com_gitlab_nyarla_go_crypt",
        importpath = "gitlab.com/nyarla/go-crypt",
        sum = "h1:7gd+rd8P3bqcn/96gOZa3F5dpJr/vEiDQYlNb/y2uNs=",
        version = "v0.0.0-20160106005555-d9a5dc2b789b",
    )
    go_repository(
        name = "com_google_cloud_go",
        importpath = "cloud.google.com/go",
        sum = "h1:xVP3LPvMjGT4J0a55y02Gw5y/dkY/rxGz58sfK1jqIo=",
        version = "v0.64.0",
    )
    go_repository(
        name = "com_google_cloud_go_bigquery",
        importpath = "cloud.google.com/go/bigquery",
        sum = "h1:PQcPefKFdaIzjQFbiyOgAqyx8q5djaE7x9Sqe712DPA=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_google_cloud_go_datastore",
        importpath = "cloud.google.com/go/datastore",
        sum = "h1:/May9ojXjRkPBNVrq+oWLqmWCkr4OU5uRY29bu0mRyQ=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_google_cloud_go_pubsub",
        importpath = "cloud.google.com/go/pubsub",
        sum = "h1:ukjixP1wl0LpnZ6LWtZJ0mX5tBmjp1f8Sqer8Z2OMUU=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_google_cloud_go_spanner",
        importpath = "cloud.google.com/go/spanner",
        sum = "h1:WXuGWhUp5i7MeUMzMrJlodqJvSGtU0Cdw6BdHGgCgVo=",
        version = "v1.9.0",
    )
    go_repository(
        name = "com_google_cloud_go_storage",
        importpath = "cloud.google.com/go/storage",
        sum = "h1:STgFzyU5/8miMl0//zKh2aQeTyeaUH3WN9bSUiJ09bA=",
        version = "v1.10.0",
    )
    go_repository(
        name = "com_shuralyov_dmitri_gpu_mtl",
        importpath = "dmitri.shuralyov.com/gpu/mtl",
        sum = "h1:VpgP7xuJadIUuKccphEpTJnWhS2jkQyMt6Y7pJCD7fY=",
        version = "v0.0.0-20190408044501-666a987793e9",
    )
    go_repository(
        name = "com_sourcegraph_sourcegraph_appdash",
        importpath = "sourcegraph.com/sourcegraph/appdash",
        sum = "h1:ucqkfpjg9WzSUubAO62csmucvxl4/JeW3F4I4909XkM=",
        version = "v0.0.0-20190731080439-ebfcffb1b5c0",
    )

    go_repository(
        name = "dev_gocloud",
        importpath = "gocloud.dev",
        sum = "h1:EDRyaRAnMGSq/QBto486gWFxMLczAfIYUmusV7XLNBM=",
        version = "v0.19.0",
    )
    go_repository(
        name = "dev_logur_adapter_logrus",
        importpath = "logur.dev/adapter/logrus",
        sum = "h1:cxsiceNXQLTKBk0keASgKAvrw9zzKa/XPE0Bn8tHXFI=",
        version = "v0.5.0",
    )
    go_repository(
        name = "dev_logur_logur",
        importpath = "logur.dev/logur",
        sum = "h1:Ui4VSx6gcQPkBlO8+KvSpJVv0y3q0FfnByjsyyOw/Vw=",
        version = "v0.16.1",
    )
    go_repository(
        name = "in_gopkg_alecthomas_kingpin_v2",
        importpath = "gopkg.in/alecthomas/kingpin.v2",
        sum = "h1:jMFz6MfLP0/4fUyZle81rXUoxOBFi19VUFKVDOQfozc=",
        version = "v2.2.6",
    )
    go_repository(
        name = "in_gopkg_check_v1",
        importpath = "gopkg.in/check.v1",
        sum = "h1:YR8cESwS4TdDjEe65xsg0ogRM/Nc3DYOhEAlW+xobZo=",
        version = "v1.0.0-20190902080502-41f04d3bba15",
    )
    go_repository(
        name = "in_gopkg_cheggaaa_pb_v1",
        importpath = "gopkg.in/cheggaaa/pb.v1",
        sum = "h1:Ev7yu1/f6+d+b3pi5vPdRPc6nNtP1umSfcWiEfRqv6I=",
        version = "v1.0.25",
    )

    go_repository(
        name = "in_gopkg_errgo_v2",
        importpath = "gopkg.in/errgo.v2",
        sum = "h1:0vLT13EuvQ0hNvakwLuFZ/jYrLp5F3kcWHXdRggjCE8=",
        version = "v2.1.0",
    )
    go_repository(
        name = "in_gopkg_fsnotify_v1",
        importpath = "gopkg.in/fsnotify.v1",
        sum = "h1:xOHLXZwVvI9hhs+cLKq5+I5onOuwQLhQwiu63xxlHs4=",
        version = "v1.4.7",
    )
    go_repository(
        name = "in_gopkg_gcfg_v1",
        importpath = "gopkg.in/gcfg.v1",
        sum = "h1:m8OOJ4ccYHnx2f4gQwpno8nAX5OGOh7RLaaz0pj3Ogs=",
        version = "v1.2.3",
    )

    go_repository(
        name = "in_gopkg_inconshreveable_log15_v2",
        importpath = "gopkg.in/inconshreveable/log15.v2",
        sum = "h1:RlWgLqCMMIYYEVcAR5MDsuHlVkaIPDAF+5Dehzg8L5A=",
        version = "v2.0.0-20180818164646-67afb5ed74ec",
    )
    go_repository(
        name = "in_gopkg_inf_v0",
        importpath = "gopkg.in/inf.v0",
        sum = "h1:73M5CoZyi3ZLMOyDlQh031Cx6N9NDJ2Vvfl76EDAgDc=",
        version = "v0.9.1",
    )

    go_repository(
        name = "in_gopkg_resty_v1",
        importpath = "gopkg.in/resty.v1",
        sum = "h1:CuXP0Pjfw9rOuY6EP+UvtNvt5DSqHpIxILZKT/quCZI=",
        version = "v1.12.0",
    )
    go_repository(
        name = "in_gopkg_tomb_v1",
        importpath = "gopkg.in/tomb.v1",
        sum = "h1:uRGJdciOHaEIrze2W8Q3AKkepLTh2hOroT7a+7czfdQ=",
        version = "v1.0.0-20141024135613-dd632973f1e7",
    )
    go_repository(
        name = "in_gopkg_warnings_v0",
        importpath = "gopkg.in/warnings.v0",
        sum = "h1:wFXVbFY8DY5/xOe1ECiWdKCzZlxgshcYVNkBHstARME=",
        version = "v0.1.2",
    )

    go_repository(
        name = "in_gopkg_yaml_v2",
        importpath = "gopkg.in/yaml.v2",
        sum = "h1:obN1ZagJSUGI0Ek/LBmuj4SNLPfIny3KsKFopxRdj10=",
        version = "v2.2.8",
    )

    go_repository(
        name = "in_gopkg_yaml_v3",
        importpath = "gopkg.in/yaml.v3",
        sum = "h1:dUUwHk2QECo/6vqA44rthZ8ie2QXMNeKRTHCNY2nXvo=",
        version = "v3.0.0-20200313102051-9f266ea9e77c",
    )
    go_repository(
        name = "io_etcd_go_bbolt",
        importpath = "go.etcd.io/bbolt",
        sum = "h1:MUGmc65QhB3pIlaQ5bB4LwqSj6GIonVJXpZiaKNyaKk=",
        version = "v1.3.3",
    )
    go_repository(
        name = "io_etcd_go_etcd",
        importpath = "go.etcd.io/etcd",
        sum = "h1:VcrIfasaLFkyjk6KNlXQSzO+B0fZcnECiDrKJsfxka0=",
        version = "v0.0.0-20191023171146-3cf2f69b5738",
    )

    go_repository(
        name = "io_gitea_code_sdk_gitea",
        importpath = "code.gitea.io/sdk/gitea",
        sum = "h1:CdI3J82Mqn0mElyEKa5DUSr3Wi2R+qm/6uVtCkSSqSM=",
        version = "v0.11.3",
    )
    go_repository(
        name = "io_k8s_sigs_yaml",
        importpath = "sigs.k8s.io/yaml",
        sum = "h1:4A07+ZFc2wgJwo8YNlQpr1rVlgUDlxXHhPJciaPY5gs=",
        version = "v1.1.0",
    )

    go_repository(
        name = "io_opencensus_go",
        importpath = "go.opencensus.io",
        sum = "h1:LYy1Hy3MJdrCdMwwzxA/dRok4ejH+RwNGbuoD9fCjto=",
        version = "v0.22.4",
    )

    go_repository(
        name = "io_opencensus_go_contrib_exporter_aws",
        importpath = "contrib.go.opencensus.io/exporter/aws",
        sum = "h1:YsbWYxDZkC7x2OxlsDEYvvEXZ3cBI3qBgUK5BqkZvRw=",
        version = "v0.0.0-20181029163544-2befc13012d0",
    )
    go_repository(
        name = "io_opencensus_go_contrib_exporter_ocagent",
        importpath = "contrib.go.opencensus.io/exporter/ocagent",
        sum = "h1:TKXjQSRS0/cCDrP7KvkgU6SmILtF/yV2TOs/02K/WZQ=",
        version = "v0.5.0",
    )
    go_repository(
        name = "io_opencensus_go_contrib_exporter_stackdriver",
        importpath = "contrib.go.opencensus.io/exporter/stackdriver",
        sum = "h1:Dll2uFfOVI3fa8UzsHyP6z0M6fEc9ZTAMo+Y3z282Xg=",
        version = "v0.12.1",
    )
    go_repository(
        name = "io_opencensus_go_contrib_integrations_ocsql",
        importpath = "contrib.go.opencensus.io/integrations/ocsql",
        sum = "h1:kfg5Yyy1nYUrqzyfW5XX+dzMASky8IJXhtHe0KTYNS4=",
        version = "v0.1.4",
    )
    go_repository(
        name = "io_opencensus_go_contrib_resource",
        importpath = "contrib.go.opencensus.io/resource",
        sum = "h1:4r2CANuYhKGmYWP02+5E94rLRcS/YeD+KlxSrOsMxk0=",
        version = "v0.1.1",
    )
    go_repository(
        name = "io_rsc_binaryregexp",
        importpath = "rsc.io/binaryregexp",
        sum = "h1:HfqmD5MEmC0zvwBuF187nq9mdnXjXsSivRiXN7SmRkE=",
        version = "v0.2.0",
    )
    go_repository(
        name = "io_rsc_quote_v3",
        importpath = "rsc.io/quote/v3",
        sum = "h1:9JKUTTIUgS6kzR9mK1YuGKv6Nl+DijDNIc0ghT58FaY=",
        version = "v3.1.0",
    )
    go_repository(
        name = "io_rsc_sampler",
        importpath = "rsc.io/sampler",
        sum = "h1:7uVkIFmeBqHfdjD+gZwtXXI+RODJ2Wc4O7MPEh/QiW4=",
        version = "v1.3.0",
    )

    go_repository(
        name = "org_bazil_fuse",
        importpath = "bazil.org/fuse",
        sum = "h1:FNCRpXiquG1aoyqcIWVFmpTSKVcx2bQD38uZZeGtdlw=",
        version = "v0.0.0-20180421153158-65cc252bf669",
    )
    go_repository(
        name = "org_golang_google_api",
        importpath = "google.golang.org/api",
        sum = "h1:yfrXXP61wVuLb0vBcG6qaOoIoqYEzOQS8jum51jkv2w=",
        version = "v0.30.0",
    )
    go_repository(
        name = "org_golang_google_appengine",
        importpath = "google.golang.org/appengine",
        sum = "h1:lMO5rYAqUxkmaj76jAkRUvt5JZgFymx/+Q5Mzfivuhc=",
        version = "v1.6.6",
    )
    go_repository(
        name = "org_golang_google_genproto",
        importpath = "google.golang.org/genproto",
        sum = "h1:sg8vLDNIxFPHTchfhH1E3AI32BL3f23oie38xUWnJM8=",
        version = "v0.0.0-20201030142918-24207fddd1c3",
    )
    go_repository(
        name = "org_golang_google_grpc",
        importpath = "google.golang.org/grpc",
        sum = "h1:cmUfbeGKnz9+2DD/UYsMQXeqbHZqZDs4eQwW0sFOpBY=",
        version = "v1.36.1",
    )

    go_repository(
        name = "org_golang_google_grpc_examples",
        importpath = "google.golang.org/grpc/examples",
        sum = "h1:oJwcuADYZXzWc+5R6wAvg6Qo86cbqAInuyKepxHGhIo=",
        version = "v0.0.0-20200915000551-32e7099cccac",
    )
    go_repository(
        name = "org_golang_google_protobuf",
        importpath = "google.golang.org/protobuf",
        sum = "h1:bxAC2xTBsZGibn2RTntX0oH50xLsqy1OxA9tTL3p/lk=",
        version = "v1.26.0",
    )
    go_repository(
        name = "org_golang_x_crypto",
        importpath = "golang.org/x/crypto",
        sum = "h1:It14KIkyBFYkHkwZ7k45minvA9aorojkyjGk9KJ5B/w=",
        version = "v0.0.0-20210322153248-0c34fe9e7dc2",
    )
    go_repository(
        name = "org_golang_x_exp",
        importpath = "golang.org/x/exp",
        sum = "h1:QE6XYQK6naiK1EPAe1g/ILLxN5RBoH5xkJk3CqlMI/Y=",
        version = "v0.0.0-20200224162631-6cc2880d07d6",
    )
    go_repository(
        name = "org_golang_x_image",
        importpath = "golang.org/x/image",
        sum = "h1:+qEpEAPhDZ1o0x3tHzZTQDArnOixOzGD9HUJfcg0mb4=",
        version = "v0.0.0-20190802002840-cff245a6509b",
    )
    go_repository(
        name = "org_golang_x_lint",
        importpath = "golang.org/x/lint",
        sum = "h1:Wh+f8QHJXR411sJR8/vRBTZ7YapZaRvUcLFFJhusH0k=",
        version = "v0.0.0-20200302205851-738671d3881b",
    )
    go_repository(
        name = "org_golang_x_mobile",
        importpath = "golang.org/x/mobile",
        sum = "h1:4+4C/Iv2U4fMZBiMCc98MG1In4gJY5YRhtpDNeDeHWs=",
        version = "v0.0.0-20190719004257-d2bd2a29d028",
    )
    go_repository(
        name = "org_golang_x_mod",
        importpath = "golang.org/x/mod",
        sum = "h1:RM4zey1++hCTbCVQfnWeKs9/IEsaBLA8vTkd0WVtmH4=",
        version = "v0.3.0",
    )
    go_repository(
        name = "org_golang_x_net",
        importpath = "golang.org/x/net",
        sum = "h1:qWPm9rbaAMKs8Bq/9LRpbMqxWRVUAQwMI9fVrssnTfw=",
        version = "v0.0.0-20210226172049-e18ecbb05110",
    )
    go_repository(
        name = "org_golang_x_oauth2",
        importpath = "golang.org/x/oauth2",
        sum = "h1:TzXSXBo42m9gQenoE3b9BGiEpg5IG2JkU5FkPIawgtw=",
        version = "v0.0.0-20200107190931-bf48bf16ab8d",
    )
    go_repository(
        name = "org_golang_x_sync",
        importpath = "golang.org/x/sync",
        sum = "h1:qwRHBd0NqMbJxfbotnDhm2ByMI1Shq4Y6oRJo21SGJA=",
        version = "v0.0.0-20200625203802-6e8e738ad208",
    )
    go_repository(
        name = "org_golang_x_sys",
        importpath = "golang.org/x/sys",
        sum = "h1:nxC68pudNYkKU6jWhgrqdreuFiOQWj1Fs7T3VrH4Pjw=",
        version = "v0.0.0-20201119102817-f84b799fce68",
    )
    go_repository(
        name = "org_golang_x_term",
        importpath = "golang.org/x/term",
        sum = "h1:v+OssWQX+hTHEmOBgwxdZxK4zHq3yOs8F9J7mk0PY8E=",
        version = "v0.0.0-20201126162022-7de9c90e9dd1",
    )

    go_repository(
        name = "org_golang_x_text",
        importpath = "golang.org/x/text",
        sum = "h1:cokOdA+Jmi5PJGXLlLllQSgYigAEfHXJAERHVMaCc2k=",
        version = "v0.3.3",
    )
    go_repository(
        name = "org_golang_x_time",
        importpath = "golang.org/x/time",
        sum = "h1:EHBhcS0mlXEAVwNyO2dLfjToGsyY4j24pTs2ScHnX7s=",
        version = "v0.0.0-20200630173020-3af7569d3a1e",
    )
    go_repository(
        name = "org_golang_x_tools",
        importpath = "golang.org/x/tools",
        sum = "h1:a6ryybeZHQf5qnBc6IwRfVnI/75UmdtJo71f0//8Dqo=",
        version = "v0.0.0-20200818005847-188abfa75333",
    )
    go_repository(
        name = "org_golang_x_xerrors",
        importpath = "golang.org/x/xerrors",
        sum = "h1:go1bK/D/BFZV2I8cIQd1NKEZ+0owSTG1fDTci4IqFcE=",
        version = "v0.0.0-20200804184101-5ec99f83aff1",
    )
    go_repository(
        name = "org_modernc_b",
        importpath = "modernc.org/b",
        sum = "h1:vpvqeyp17ddcQWF29Czawql4lDdABCDRbXRAS4+aF2o=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_db",
        importpath = "modernc.org/db",
        sum = "h1:2c6NdCfaLnshSvY7OU09cyAY0gYXUZj4lmg5ItHyucg=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_file",
        importpath = "modernc.org/file",
        sum = "h1:9/PdvjVxd5+LcWUQIfapAWRGOkDLK90rloa8s/au06A=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_fileutil",
        importpath = "modernc.org/fileutil",
        sum = "h1:Z1AFLZwl6BO8A5NldQg/xTSjGLetp+1Ubvl4alfGx8w=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_golex",
        importpath = "modernc.org/golex",
        sum = "h1:wWpDlbK8ejRfSyi0frMyhilD3JBvtcx2AdGDnU+JtsE=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_internal",
        importpath = "modernc.org/internal",
        sum = "h1:XMDsFDcBDsibbBnHB2xzljZ+B1yrOVLEFkKL2u15Glw=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_lldb",
        importpath = "modernc.org/lldb",
        sum = "h1:6vjDJxQEfhlOLwl4bhpwIz00uyFK4EmSYcbwqwbynsc=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_mathutil",
        importpath = "modernc.org/mathutil",
        sum = "h1:93vKjrJopTPrtTNpZ8XIovER7iCIH1QU7wNbOQXC60I=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_ql",
        importpath = "modernc.org/ql",
        sum = "h1:bIQ/trWNVjQPlinI6jdOQsi195SIturGo3mp5hsDqVU=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_sortutil",
        importpath = "modernc.org/sortutil",
        sum = "h1:oP3U4uM+NT/qBQcbg/K2iqAX0Nx7B1b6YZtq3Gk/PjM=",
        version = "v1.1.0",
    )
    go_repository(
        name = "org_modernc_strutil",
        importpath = "modernc.org/strutil",
        sum = "h1:+1/yCzZxY2pZwwrsbH+4T7BQMoLQ9QiBshRC9eicYsc=",
        version = "v1.1.0",
    )
    go_repository(
        name = "org_modernc_zappy",
        importpath = "modernc.org/zappy",
        sum = "h1:dPVaP+3ueIUv4guk8PuZ2wiUGcJ1WUVvIheeSSTD0yk=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_mongodb_go_mongo_driver",
        importpath = "go.mongodb.org/mongo-driver",
        sum = "h1:aeOqSrhl9eDRAap/3T5pCfMBEBxZ0vuXBP+RMtp2KX8=",
        version = "v1.1.0",
    )
    go_repository(
        name = "org_uber_go_atomic",
        importpath = "go.uber.org/atomic",
        sum = "h1:Ezj3JGmsOnG1MoRWQkPBsKLe9DwWD9QeXzTRzzldNVk=",
        version = "v1.6.0",
    )
    go_repository(
        name = "org_uber_go_multierr",
        importpath = "go.uber.org/multierr",
        sum = "h1:KCa4XfM8CWFCpxXRGok+Q0SS/0XBhMDbHHGABQLvD2A=",
        version = "v1.5.0",
    )

    go_repository(
        name = "org_uber_go_tools",
        importpath = "go.uber.org/tools",
        sum = "h1:0mgffUl7nfd+FpvXMVz4IDEaUSmT1ysygQC7qYo7sG4=",
        version = "v0.0.0-20190618225709-2cfd321de3ee",
    )
    go_repository(
        name = "org_uber_go_zap",
        importpath = "go.uber.org/zap",
        sum = "h1:nR6NoDBgAf67s68NhaXbsojM+2gxp3S1hWkHDl27pVU=",
        version = "v1.13.0",
    )
    go_repository(
        name = "tools_gotest",
        importpath = "gotest.tools",
        sum = "h1:VsBPFP1AI068pPrMxtb/S8Zkgf9xEmTLJjfM+P5UIEo=",
        version = "v2.2.0+incompatible",
    )
    go_repository(
        name = "tools_gotest_v3",
        importpath = "gotest.tools/v3",
        sum = "h1:kG1BFyqVHuQoVQiR1bWGnfz/fmHvvuiSPIV7rvl360E=",
        version = "v3.0.2",
    )
