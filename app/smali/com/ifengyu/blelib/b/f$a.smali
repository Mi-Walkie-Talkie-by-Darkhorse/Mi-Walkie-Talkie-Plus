.class final Lcom/ifengyu/blelib/b/f$a;
.super Ljava/lang/Object;
.source "SeqGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/blelib/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/ifengyu/blelib/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/b/f;

    invoke-direct {v0}, Lcom/ifengyu/blelib/b/f;-><init>()V

    sput-object v0, Lcom/ifengyu/blelib/b/f$a;->a:Lcom/ifengyu/blelib/b/f;

    return-void
.end method

.method static synthetic a()Lcom/ifengyu/blelib/b/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/blelib/b/f$a;->a:Lcom/ifengyu/blelib/b/f;

    return-object v0
.end method
