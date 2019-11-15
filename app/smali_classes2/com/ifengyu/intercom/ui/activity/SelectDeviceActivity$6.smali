.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$6;
.super Ljava/lang/Object;
.source "SelectDeviceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->e()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$6;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$6;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$6;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void
.end method
