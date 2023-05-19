.class Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment$a;
.super Lcom/ifengyu/library/b/e/a;
.source "Mi3GWDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->m3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    return-void
.end method
