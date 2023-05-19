.class Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e$a;
.super Ljava/lang/Object;
.source "NetDeviceProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/models/DeviceModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/models/DeviceModel;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e;Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e$a;->a:Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->R:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/e$a;->a:Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->s3(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method
