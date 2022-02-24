.class public interface abstract Lcom/squareup/otto/g;
.super Ljava/lang/Object;
.source "ThreadEnforcer.java"


# static fields
.field public static final a:Lcom/squareup/otto/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/squareup/otto/g$a;

    invoke-direct {v0}, Lcom/squareup/otto/g$a;-><init>()V

    sput-object v0, Lcom/squareup/otto/g;->a:Lcom/squareup/otto/g;

    .line 2
    new-instance v0, Lcom/squareup/otto/g$b;

    invoke-direct {v0}, Lcom/squareup/otto/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/squareup/otto/b;)V
.end method
