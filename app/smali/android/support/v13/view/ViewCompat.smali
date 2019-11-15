.class public Landroid/support/v13/view/ViewCompat;
.super Landroid/support/v4/view/ViewCompat;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xd
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xd
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/view/ViewCompat$a;,
        Landroid/support/v13/view/ViewCompat$b;,
        Landroid/support/v13/view/ViewCompat$c;
    }
.end annotation


# static fields
.field static a:Landroid/support/v13/view/ViewCompat$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v13/view/ViewCompat$a;

    invoke-direct {v0}, Landroid/support/v13/view/ViewCompat$a;-><init>()V

    sput-object v0, Landroid/support/v13/view/ViewCompat;->a:Landroid/support/v13/view/ViewCompat$c;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v13/view/ViewCompat$b;

    invoke-direct {v0}, Landroid/support/v13/view/ViewCompat$b;-><init>()V

    sput-object v0, Landroid/support/v13/view/ViewCompat;->a:Landroid/support/v13/view/ViewCompat$c;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat;-><init>()V

    return-void
.end method
