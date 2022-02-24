.class final Lcom/amap/api/col/l3/ia$a;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amap/api/col/l3/ia$b;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Lcom/amap/api/col/l3/ia$b;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/ia$a;->a:Ljava/util/Vector;

    .line 3
    new-instance v0, Lcom/amap/api/col/l3/ia$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/ia$b;-><init>(B)V

    iput-object v0, p0, Lcom/amap/api/col/l3/ia$a;->b:Lcom/amap/api/col/l3/ia$b;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/amap/api/col/l3/ia$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/amap/api/col/l3/ia$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ia$a;->b:Lcom/amap/api/col/l3/ia$b;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/amap/api/col/l3/ia$b;
    .locals 4

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/amap/api/col/l3/ia$a;->b:Lcom/amap/api/col/l3/ia$b;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/l3/ia$a;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/amap/api/col/l3/ia$a;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/ia$b;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/amap/api/col/l3/ia$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    new-instance v1, Lcom/amap/api/col/l3/ia$b;

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/ia$b;-><init>(B)V

    .line 8
    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3/ia$b;->b(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/amap/api/col/l3/ia$a;->a:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ia$a;->b:Lcom/amap/api/col/l3/ia$b;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ia$b;->a(Ljava/lang/String;)V

    return-void
.end method
