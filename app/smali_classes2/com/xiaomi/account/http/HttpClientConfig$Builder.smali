.class public Lcom/xiaomi/account/http/HttpClientConfig$Builder;
.super Ljava/lang/Object;
.source "HttpClientConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/http/HttpClientConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field netWorkSlotId:I

.field network:Landroid/net/Network;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/account/http/HttpClientConfig$Builder;->netWorkSlotId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaomi/account/http/HttpClientConfig;
    .locals 2

    new-instance v0, Lcom/xiaomi/account/http/HttpClientConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/http/HttpClientConfig;-><init>(Lcom/xiaomi/account/http/HttpClientConfig$Builder;Lcom/xiaomi/account/http/HttpClientConfig$1;)V

    return-object v0
.end method

.method public network(Landroid/net/Network;)Lcom/xiaomi/account/http/HttpClientConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/http/HttpClientConfig$Builder;->network:Landroid/net/Network;

    return-object p0
.end method

.method public useDataNetWork(I)Lcom/xiaomi/account/http/HttpClientConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/account/http/HttpClientConfig$Builder;->netWorkSlotId:I

    return-object p0
.end method
