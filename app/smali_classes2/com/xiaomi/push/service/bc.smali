.class public Lcom/xiaomi/push/service/bc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/XMPushService$o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/bc$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/push/service/bc$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/bc;->a:Lcom/xiaomi/push/service/bc$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/push/service/bc$a;->a()V

    :cond_0
    return-void
.end method
