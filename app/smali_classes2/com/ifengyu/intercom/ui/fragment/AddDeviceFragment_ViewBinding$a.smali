.class Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment_ViewBinding$a;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "AddDeviceFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment_ViewBinding;-><init>(Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment_ViewBinding;Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment_ViewBinding$a;->a:Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment_ViewBinding$a;->a:Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
