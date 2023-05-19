.class public final synthetic Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/a;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/a;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    check-cast p1, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->k(Lcom/ifengyu/intercom/http/entity/VersionInfo;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method
