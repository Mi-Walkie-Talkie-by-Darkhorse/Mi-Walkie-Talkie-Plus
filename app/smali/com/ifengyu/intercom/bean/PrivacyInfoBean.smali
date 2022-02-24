.class public Lcom/ifengyu/intercom/bean/PrivacyInfoBean;
.super Ljava/lang/Object;
.source "PrivacyInfoBean.java"


# instance fields
.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/bean/PrivacyInfoBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/bean/PrivacyInfoBean;->version:Ljava/lang/String;

    return-void
.end method
