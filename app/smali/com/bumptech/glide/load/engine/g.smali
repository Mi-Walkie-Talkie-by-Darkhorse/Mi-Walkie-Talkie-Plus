.class public abstract Lcom/bumptech/glide/load/engine/g;
.super Ljava/lang/Object;
.source "DiskCacheStrategy.java"


# static fields
.field public static final a:Lcom/bumptech/glide/load/engine/g;

.field public static final b:Lcom/bumptech/glide/load/engine/g;

.field public static final c:Lcom/bumptech/glide/load/engine/g;

.field public static final d:Lcom/bumptech/glide/load/engine/g;

.field public static final e:Lcom/bumptech/glide/load/engine/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/g$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/g$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/g;->a:Lcom/bumptech/glide/load/engine/g;

    new-instance v0, Lcom/bumptech/glide/load/engine/g$2;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/g$2;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/g;

    new-instance v0, Lcom/bumptech/glide/load/engine/g$3;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/g$3;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/g;->c:Lcom/bumptech/glide/load/engine/g;

    new-instance v0, Lcom/bumptech/glide/load/engine/g$4;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/g$4;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/g;->d:Lcom/bumptech/glide/load/engine/g;

    new-instance v0, Lcom/bumptech/glide/load/engine/g$5;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/g$5;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/g;->e:Lcom/bumptech/glide/load/engine/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract a(Lcom/bumptech/glide/load/DataSource;)Z
.end method

.method public abstract a(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
.end method

.method public abstract b()Z
.end method
