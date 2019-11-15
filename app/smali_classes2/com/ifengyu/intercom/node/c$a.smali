.class public Lcom/ifengyu/intercom/node/c$a;
.super Ljava/lang/Object;
.source "BtKeyCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/node/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/ifengyu/intercom/node/btkey/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/node/c$a;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/node/c$a;->a:I

    return v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/node/c$a;)Lcom/ifengyu/intercom/node/btkey/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/c$a;->b:Lcom/ifengyu/intercom/node/btkey/a;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/ifengyu/intercom/node/c$a;
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/node/c$a;->a:I

    return-object p0
.end method

.method public a(Lcom/ifengyu/intercom/node/btkey/a;)Lcom/ifengyu/intercom/node/c$a;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/c$a;->b:Lcom/ifengyu/intercom/node/btkey/a;

    return-object p0
.end method

.method public a()Lcom/ifengyu/intercom/node/c;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/node/c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/c;-><init>(Lcom/ifengyu/intercom/node/c$a;)V

    return-object v0
.end method
