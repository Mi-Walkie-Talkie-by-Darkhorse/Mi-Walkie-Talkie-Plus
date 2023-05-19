.class public final synthetic Lcom/ifengyu/intercom/ui/talk/c3/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/talk/c3/e0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/talk/c3/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/i;->a:Lcom/ifengyu/intercom/ui/talk/c3/e0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i;->a:Lcom/ifengyu/intercom/ui/talk/c3/e0;

    check-cast p1, Lcom/ifengyu/intercom/http/entity/UploadFileEntity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/e0;->J(Lcom/ifengyu/intercom/http/entity/UploadFileEntity;)V

    return-void
.end method
