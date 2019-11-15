.class public Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;
.super Ljava/lang/Object;
.source "SimpleRegisterReceiver.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/IRegisterReceiver;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
