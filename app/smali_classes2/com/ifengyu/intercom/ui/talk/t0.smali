.class public final synthetic Lcom/ifengyu/intercom/ui/talk/t0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/t0;->a:Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/t0;->a:Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;

    check-cast p1, Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->p3(Lcom/ifengyu/talk/http/entity/TempGroup;)V

    return-void
.end method
