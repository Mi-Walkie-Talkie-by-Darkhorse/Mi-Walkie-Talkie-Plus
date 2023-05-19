.class public Lcom/ifengyu/intercom/h/a;
.super Ljava/lang/Object;
.source "BleLinkerManager.java"


# static fields
.field private static a:Lcom/ifengyu/intercom/h/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/h/a;->a:Lcom/ifengyu/intercom/h/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/h/a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/h/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ifengyu/intercom/h/a;->a:Lcom/ifengyu/intercom/h/a;

    :cond_0
    return-void
.end method
