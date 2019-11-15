.class public interface abstract annotation Lbutterknife/OnTextChanged;
.super Ljava/lang/Object;
.source "OnTextChanged.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lbutterknife/internal/ListenerClass;
    callbacks = Lbutterknife/OnTextChanged$Callback;
    remover = "removeTextChangedListener"
    setter = "addTextChangedListener"
    targetType = "android.widget.TextView"
    type = "android.text.TextWatcher"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lbutterknife/OnTextChanged;
        callback = .enum Lbutterknife/OnTextChanged$Callback;->TEXT_CHANGED:Lbutterknife/OnTextChanged$Callback;
        value = {
            -0x1
        }
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbutterknife/OnTextChanged$Callback;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract callback()Lbutterknife/OnTextChanged$Callback;
.end method

.method public abstract value()[I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end method
