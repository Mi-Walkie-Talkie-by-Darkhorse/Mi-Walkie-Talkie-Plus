.class public final synthetic Lcom/ifengyu/intercom/device/mi3gw/c/y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/y;->a:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    iput-wide p2, p0, Lcom/ifengyu/intercom/device/mi3gw/c/y;->b:J

    iput-object p4, p0, Lcom/ifengyu/intercom/device/mi3gw/c/y;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/y;->a:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    iget-wide v1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/y;->b:J

    iget-object v3, p0, Lcom/ifengyu/intercom/device/mi3gw/c/y;->c:Ljava/lang/String;

    check-cast p1, Lcom/ifengyu/library/http/entity/NewHttpResult;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->W(JLjava/lang/String;Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method
