.class public final Landroid/support/v4/app/ServiceCompat;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ServiceCompat$Api24ServiceCompatImpl;,
        Landroid/support/v4/app/ServiceCompat$BaseServiceCompatImpl;,
        Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;,
        Landroid/support/v4/app/ServiceCompat$StopForegroundFlags;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;

.field public static final START_STICKY:I = 0x1

.field public static final STOP_FOREGROUND_DETACH:I = 0x2

.field public static final STOP_FOREGROUND_REMOVE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/app/ServiceCompat$Api24ServiceCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/app/ServiceCompat$Api24ServiceCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/app/ServiceCompat;->IMPL:Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/app/ServiceCompat$BaseServiceCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/app/ServiceCompat$BaseServiceCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/app/ServiceCompat;->IMPL:Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stopForeground(Landroid/app/Service;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/app/ServiceCompat;->IMPL:Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;->stopForeground(Landroid/app/Service;I)V

    return-void
.end method
