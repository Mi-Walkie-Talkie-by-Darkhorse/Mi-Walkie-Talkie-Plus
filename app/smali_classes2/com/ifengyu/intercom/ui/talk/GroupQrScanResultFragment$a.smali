.class Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment$a;
.super Lcom/ifengyu/library/b/e/a;
.source "GroupQrScanResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->E2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->i3(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->g3(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "queryGroupWithMembers fail"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;

    invoke-virtual {p1}, Lcom/ifengyu/library/http/exception/NewApiException;->a()I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/library/b/f/a;->a(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/s0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/s0;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment$a;)V

    invoke-static {v0, p1, v1}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->h3(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment$a;->c()V

    return-void
.end method
