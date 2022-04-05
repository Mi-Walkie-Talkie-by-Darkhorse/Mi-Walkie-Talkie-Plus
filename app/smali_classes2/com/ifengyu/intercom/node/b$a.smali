.class public Lcom/ifengyu/intercom/node/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/node/b;
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

.method static synthetic a(Lcom/ifengyu/intercom/node/b$a;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/node/b$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/node/b$a;)Lcom/ifengyu/intercom/node/btkey/a;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/node/b$a;->b:Lcom/ifengyu/intercom/node/btkey/a;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/ifengyu/intercom/node/b$a;
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/node/b$a;->a:I

    return-object p0
.end method

.method public a(Lcom/ifengyu/intercom/node/btkey/a;)Lcom/ifengyu/intercom/node/b$a;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/b$a;->b:Lcom/ifengyu/intercom/node/btkey/a;

    return-object p0
.end method

.method public a()Lcom/ifengyu/intercom/node/b;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/node/b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/b;-><init>(Lcom/ifengyu/intercom/node/b$a;)V

    return-object v0
.end method
