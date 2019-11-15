.class public Lcom/ifengyu/intercom/eventbus/a;
.super Ljava/lang/Object;
.source "MiBus.java"


# static fields
.field private static a:Lcom/squareup/otto/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/otto/b;

    sget-object v1, Lcom/squareup/otto/g;->a:Lcom/squareup/otto/g;

    invoke-direct {v0, v1}, Lcom/squareup/otto/b;-><init>(Lcom/squareup/otto/g;)V

    sput-object v0, Lcom/ifengyu/intercom/eventbus/a;->a:Lcom/squareup/otto/b;

    return-void
.end method

.method public static a()Lcom/squareup/otto/b;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/eventbus/a;->a:Lcom/squareup/otto/b;

    return-object v0
.end method
