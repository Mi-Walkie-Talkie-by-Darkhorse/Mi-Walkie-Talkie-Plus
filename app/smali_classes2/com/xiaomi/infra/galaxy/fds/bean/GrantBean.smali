.class public Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;
.super Ljava/lang/Object;
.source "GrantBean.java"


# instance fields
.field private grantee:Lcom/xiaomi/infra/galaxy/fds/bean/GranteeBean;

.field private permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

.field private type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/infra/galaxy/fds/bean/GranteeBean;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;->USER:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;-><init>(Lcom/xiaomi/infra/galaxy/fds/bean/GranteeBean;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/infra/galaxy/fds/bean/GranteeBean;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;->grantee:Lcom/xiaomi/infra/galaxy/fds/bean/GranteeBean;

    .line 5
    iput-object p2, p0, Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;->permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    .line 6
    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    return-void
.end method


# virtual methods
.method public getGrantee()Lcom/xiaomi/infra/galaxy/fds/bean/GranteeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;->grantee:Lcom/xiaomi/infra/galaxy/fds/bean/GranteeBean;

    return-object v0
.end method

.method public getPermission()Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;->permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    return-object v0
.end method

.method public getType()Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    return-object v0
.end method

.method public setGrantee(Lcom/xiaomi/infra/galaxy/fds/bean/GranteeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;->grantee:Lcom/xiaomi/infra/galaxy/fds/bean/GranteeBean;

    return-void
.end method

.method public setPermission(Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;->permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    return-void
.end method

.method public setType(Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    return-void
.end method
