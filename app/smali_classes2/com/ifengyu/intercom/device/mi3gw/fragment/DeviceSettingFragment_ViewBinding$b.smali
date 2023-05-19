.class Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding$b;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DeviceSettingFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding$b;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding$b;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
