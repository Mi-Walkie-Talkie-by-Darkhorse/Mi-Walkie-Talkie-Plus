.class public interface abstract Lcom/bumptech/glide/load/engine/z/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/z/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/engine/z/a$b;

.field public static final b:Lcom/bumptech/glide/load/engine/z/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/z/a$b$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/z/a$b$a;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/engine/z/a$b$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/z/a$b$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/z/a$b;->a:Lcom/bumptech/glide/load/engine/z/a$b;

    new-instance v0, Lcom/bumptech/glide/load/engine/z/a$b$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/z/a$b$c;-><init>()V

    sget-object v0, Lcom/bumptech/glide/load/engine/z/a$b;->a:Lcom/bumptech/glide/load/engine/z/a$b;

    sput-object v0, Lcom/bumptech/glide/load/engine/z/a$b;->b:Lcom/bumptech/glide/load/engine/z/a$b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method
