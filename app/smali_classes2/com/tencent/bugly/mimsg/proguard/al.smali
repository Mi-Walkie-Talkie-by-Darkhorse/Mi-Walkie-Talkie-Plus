.class public final Lcom/tencent/bugly/mimsg/proguard/al;
.super Lcom/tencent/bugly/mimsg/proguard/k;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/bugly/mimsg/proguard/ak;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/bugly/mimsg/proguard/ak;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/proguard/k;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/al;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/mimsg/proguard/i;)V
    .locals 3

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/al;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/mimsg/proguard/al;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/ak;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/proguard/ak;-><init>()V

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/al;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/al;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/mimsg/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/al;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public final a(Lcom/tencent/bugly/mimsg/proguard/j;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/al;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/util/Collection;I)V

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 0

    return-void
.end method
