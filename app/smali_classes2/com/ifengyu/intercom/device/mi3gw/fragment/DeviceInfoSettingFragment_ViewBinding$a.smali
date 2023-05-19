.class Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding$a;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DeviceInfoSettingFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding;Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding$a;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding$a;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
