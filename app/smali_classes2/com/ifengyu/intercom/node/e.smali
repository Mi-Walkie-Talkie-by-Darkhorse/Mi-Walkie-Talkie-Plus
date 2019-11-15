.class public Lcom/ifengyu/intercom/node/e;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"


# instance fields
.field public final a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/e;->b:Ljava/lang/String;

    iput p2, p0, Lcom/ifengyu/intercom/node/e;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/e;->b:Ljava/lang/String;

    return-object v0
.end method
