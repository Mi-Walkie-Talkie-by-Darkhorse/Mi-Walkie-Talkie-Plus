.class final Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HashEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;

.field final next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    iput-object p3, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    iput-object p4, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method static newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    new-array v0, p0, [Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    return-object v0
.end method


# virtual methods
.method key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
