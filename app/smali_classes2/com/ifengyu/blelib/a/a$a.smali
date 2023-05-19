.class final Lcom/ifengyu/blelib/a/a$a;
.super Ljava/lang/Object;
.source "SeqGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/blelib/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/ifengyu/blelib/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/a/a;

    invoke-direct {v0}, Lcom/ifengyu/blelib/a/a;-><init>()V

    sput-object v0, Lcom/ifengyu/blelib/a/a$a;->a:Lcom/ifengyu/blelib/a/a;

    return-void
.end method

.method static synthetic a()Lcom/ifengyu/blelib/a/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/blelib/a/a$a;->a:Lcom/ifengyu/blelib/a/a;

    return-object v0
.end method
