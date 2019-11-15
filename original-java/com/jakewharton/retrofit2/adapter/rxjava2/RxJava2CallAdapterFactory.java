package com.jakewharton.retrofit2.adapter.rxjava2;

import io.reactivex.e;
import io.reactivex.g;
import io.reactivex.k;
import io.reactivex.r;
import io.reactivex.s;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import retrofit2.c;
import retrofit2.c.a;
import retrofit2.l;

public final class RxJava2CallAdapterFactory extends a {
    private final r scheduler;

    public static RxJava2CallAdapterFactory create() {
        return new RxJava2CallAdapterFactory(null);
    }

    public static RxJava2CallAdapterFactory createWithScheduler(r rVar) {
        if (rVar != null) {
            return new RxJava2CallAdapterFactory(rVar);
        }
        throw new NullPointerException("scheduler == null");
    }

    private RxJava2CallAdapterFactory(r rVar) {
        this.scheduler = rVar;
    }

    public c<?> get(Type type, Annotation[] annotationArr, l lVar) {
        Type type2;
        Class<k> rawType = getRawType(type);
        if (rawType == io.reactivex.a.class) {
            return new RxJava2CallAdapter(Void.class, this.scheduler, false, true, false, false, false, true);
        }
        boolean z = rawType == e.class;
        boolean z2 = rawType == s.class;
        boolean z3 = rawType == g.class;
        if (rawType != k.class && !z && !z2 && !z3) {
            return null;
        }
        boolean z4 = false;
        boolean z5 = false;
        if (!(type instanceof ParameterizedType)) {
            String str = z ? "Flowable" : z2 ? "Single" : "Observable";
            throw new IllegalStateException(str + " return type must be parameterized as " + str + "<Foo> or " + str + "<? extends Foo>");
        }
        Type parameterUpperBound = getParameterUpperBound(0, (ParameterizedType) type);
        Class<Result> rawType2 = getRawType(parameterUpperBound);
        if (rawType2 == retrofit2.k.class) {
            if (!(parameterUpperBound instanceof ParameterizedType)) {
                throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
            }
            type2 = getParameterUpperBound(0, (ParameterizedType) parameterUpperBound);
        } else if (rawType2 != Result.class) {
            z5 = true;
            type2 = parameterUpperBound;
        } else if (!(parameterUpperBound instanceof ParameterizedType)) {
            throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
        } else {
            type2 = getParameterUpperBound(0, (ParameterizedType) parameterUpperBound);
            z4 = true;
        }
        return new RxJava2CallAdapter(type2, this.scheduler, z4, z5, z, z2, z3, false);
    }
}
