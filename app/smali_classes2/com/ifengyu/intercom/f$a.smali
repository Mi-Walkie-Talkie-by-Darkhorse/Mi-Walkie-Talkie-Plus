.class final Lcom/ifengyu/intercom/f$a;
.super Ljava/lang/Object;
.source "AppData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/ifengyu/intercom/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/f;

    invoke-direct {v0}, Lcom/ifengyu/intercom/f;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/f$a;->a:Lcom/ifengyu/intercom/f;

    return-void
.end method

.method static synthetic a()Lcom/ifengyu/intercom/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/f$a;->a:Lcom/ifengyu/intercom/f;

    return-object v0
.end method
