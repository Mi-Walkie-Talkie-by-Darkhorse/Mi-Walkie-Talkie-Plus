.class public final synthetic Lcom/ifengyu/intercom/device/mi3gw/c/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/c/d0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/t;->a:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/t;->a:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    check-cast p1, Lcom/ifengyu/intercom/http/entity/UploadFileEntity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s0(Lcom/ifengyu/intercom/http/entity/UploadFileEntity;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
