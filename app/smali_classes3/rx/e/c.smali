.class public final Lrx/e/c;
.super Lrx/d;
.source "ImmediateScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/e/c$1;,
        Lrx/e/c$a;
    }
.end annotation


# static fields
.field private static final a:Lrx/e/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrx/e/c;

    invoke-direct {v0}, Lrx/e/c;-><init>()V

    sput-object v0, Lrx/e/c;->a:Lrx/e/c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrx/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lrx/d$a;
    .locals 2

    new-instance v0, Lrx/e/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrx/e/c$a;-><init>(Lrx/e/c;Lrx/e/c$1;)V

    return-object v0
.end method
