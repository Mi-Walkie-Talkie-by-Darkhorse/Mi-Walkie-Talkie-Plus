.class Lcom/xiaomi/account/auth/OrderApp;
.super Ljava/lang/Object;
.source "OrderApp.java"


# instance fields
.field private name:Ljava/lang/String;

.field private version:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/auth/OrderApp;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/account/auth/OrderApp;->version:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/account/auth/OrderApp;->name:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/account/auth/OrderApp;->version:I

    return-void
.end method
