.class public interface abstract Lcom/squareup/otto/g;
.super Ljava/lang/Object;
.source "ThreadEnforcer.java"


# static fields
.field public static final a:Lcom/squareup/otto/g;

.field public static final b:Lcom/squareup/otto/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/otto/g$1;

    invoke-direct {v0}, Lcom/squareup/otto/g$1;-><init>()V

    sput-object v0, Lcom/squareup/otto/g;->a:Lcom/squareup/otto/g;

    new-instance v0, Lcom/squareup/otto/g$2;

    invoke-direct {v0}, Lcom/squareup/otto/g$2;-><init>()V

    sput-object v0, Lcom/squareup/otto/g;->b:Lcom/squareup/otto/g;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/squareup/otto/b;)V
.end method
