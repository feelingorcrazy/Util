package org.vv.util;

import java.math.BigDecimal;
import java.util.*;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToLongFunction;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static java.util.stream.Collectors.groupingBy;

/**
 * 描述 : stream的封装工具类.
 *
 * @author : ada
 */
public class StreamUtil {

	/**
	 * 把流中的某一元素用连接标志连接成一个字符串.
	 *
	 * @param stream   流.
	 * @param func     函数.
	 * @param joinFlag 连接标志.
	 * @param <T>      函数的入参.
	 * @return String.
	 */
	public static <T> String join(Stream<T> stream, Function<T, String> func, String joinFlag) {
		return stream.map(func).collect(Collectors.joining(joinFlag));
	}

	/**
	 * 从流中抽取<R>，生成字符串数组.
	 *
	 * @param stream 流.
	 * @param func   传入的函数.
	 * @param <T>    函数的入参.
	 * @return List<R>.
	 */
	public static <T> String[] mapToStrArray(Stream<T> stream, Function<T, String> func) {
		return stream
				.map(func)
				.toArray(String[]::new);
	}

	/**
	 * 从流中抽取<R>，生成集合List<R>.
	 *
	 * @param stream 流.
	 * @param func   传入的函数.
	 * @param <T>    函数的入参.
	 * @param <R>    函数的出参.
	 * @return List<R>.
	 */
	public static <T, R> List<R> mapToList(Stream<T> stream, Function<T, R> func) {
		return stream
				.map(func)
				.collect(Collectors.toList());
	}

	/**
	 * 从流中抽取<R>，生成去重集合Set<R>.
	 *
	 * @param stream 流.
	 * @param func   传入的函数.
	 * @param <T>    函数的入参.
	 * @param <R>    函数的出参.
	 * @return Set<R>.
	 */
	public static <T, R> Set<R> mapToSet(Stream<T> stream, Function<T, R> func) {
		return stream
				.map(func)
				.collect(Collectors.toSet());
	}

	/**
	 * 从流中抽取<R>，生成Map<R,T>.
	 *
	 * @param stream 流.
	 * @param func   传入的函数.
	 * @param <T>    函数的入参.
	 * @param <R>    函数的出参.
	 * @return Map<R, T>.
	 */
	public static <T, R> Map<R, T> identity(Stream<T> stream, Function<T, R> func) {
		return stream.collect(Collectors.toMap((func), Function.identity()));
	}

	/**
	 * 从流中抽取<R>，根据R的不同值生成Map<R,List<T>>.
	 *
	 * @param stream 流.
	 * @param func   传入的函数.
	 * @param <T>    函数的入参.
	 * @param <R>    函数的出参.
	 * @return Map<R, List < T>>.
	 */
	public static <T, R> Map<R, List<T>> groupBy(Stream<T> stream, Function<T, R> func) {
		return stream.collect(groupingBy(func));
	}

	/**
	 * 从流中抽取满足条件函数predicate的元素，生成List<T>.
	 *
	 * @param stream    流.
	 * @param predicate 返回boolean的函数.
	 * @param <T>       函数的入参.
	 * @return List<T>.
	 */
	public static <T> List<T> filter(Stream<T> stream, Predicate<T> predicate) {
		return stream
				.filter(predicate)
				.collect(Collectors.toList());
	}

	/**
	 * 从流中抽取满足条件函数predicate的元素，选取第一个.
	 *
	 * @param stream    流.
	 * @param predicate 返回boolean的函数.
	 * @param t         没有第一个默认，指定返回.
	 * @param <T>       函数的入参.
	 * @return List<T>.
	 */
	public static <T> T filterFirst(Stream<T> stream, Predicate<T> predicate, T t) {
		return stream
				.filter(predicate)
				.findFirst()
				.orElse(t);
	}

	/**
	 * 从流中抽取满足条件函数predicate的元素，生成List<T>.
	 *
	 * @param stream    流.
	 * @param predicate 返回boolean的函数.
	 * @param <T>       函数的入参.
	 * @return List<T>.
	 */
	public static <T> List<T> filterSort(Stream<T> stream, Predicate<T> predicate, Comparator<T> comparator) {
		return stream
				.filter(predicate)
				.sorted(comparator)
				.collect(Collectors.toList());
	}


	/**
	 * 从流中抽取满足条件函数predicate的元素，并按func的出参进行排序，生成有序List<T>.
	 *
	 * @param stream    流.
	 * @param predicate 条件函数.
	 * @param func      函数.
	 * @param <T>       条件函数的入参.
	 * @param <U>       函数的出参.
	 * @return List<T>.
	 */
	public static <T, U extends Comparable<? super U>> List<T> filterSort(Stream<T> stream,
																		  Predicate<T> predicate,
																		  Function<T, U> func) {
		return stream
				.filter(predicate)
				.sorted(Comparator.comparing(func))
				.collect(Collectors.toList());
	}

	/**
	 * 统计流中某项类型为Long的元素之和.
	 *
	 * @param stream 流.
	 * @param func   函数.
	 * @param <T>    函数的入参.
	 * @return Long.
	 */
	public static <T> Long filterSumLong(Stream<T> stream, ToLongFunction<T> func) {
		return stream
				.filter(obj -> Objects.nonNull(func))
				.mapToLong(func)
				.sum();
	}

	/**
	 * 统计流中某项类型为BigDecimal的元素之和.
	 *
	 * @param stream 流.
	 * @param func   函数.
	 * @param <T>    函数的入参.
	 * @return BigDecimal.
	 */
	public static <T> BigDecimal filterSumBigDecimal(Stream<T> stream, Function<T, BigDecimal> func) {
		return stream
				.filter(obj -> Objects.nonNull(func))
				.map(func)
				.reduce(BigDecimal.ZERO, BigDecimal::add);
	}

	/**
	 * 从流中抽取满足条件函数predicate的元素，并返回元素数量.
	 *
	 * @param stream    流.
	 * @param predicate 条件函数.
	 * @param <T>       函数的入参.
	 * @return List<T>.
	 */
	public static <T> long count(Stream<T> stream, Predicate<T> predicate) {
		return stream
				.filter(predicate)
				.count();
	}

	/**
	 * 统计流中<R>的不同类型的数量.
	 *
	 * @param stream 流.
	 * @param func   函数.
	 * @param <T>    函数的入参.
	 * @param <R>    函数的出参.
	 * @return List<T>.
	 */
	public static <T, R> Map<R, Long> mapCount(Stream<T> stream, Function<T, R> func) {
		return stream.collect(Collectors.groupingBy(func, Collectors.counting()));
	}

	/**
	 * 流中的元素按比较函数排序，选出最大的元素。无，则手动返回.
	 *
	 * @param stream     流.
	 * @param comparator 比较函数.
	 * @param obj        当没有找到最大元素的返回值.
	 * @param <T>        函数的入参.
	 * @return List<T>.
	 */
	public static <T> T max(Stream<T> stream, Comparator<T> comparator, T obj) {
		return stream
				.max(comparator)
				.orElse(obj);
	}

	/**
	 * 如果流中有任一元素满足条件predicate，则返回true,反之，则返回false.
	 *
	 * @param stream    流.
	 * @param predicate 条件函数.
	 * @param <T>       函数的入参.
	 * @return boolean.
	 */
	public static <T> boolean anyMatch(Stream<T> stream, Predicate<T> predicate) {
		return stream.anyMatch(predicate);
	}


	public static void main(String[] args) {
//        List<Stream> recordList = new ArrayList<>();
//        Stream stream = recordList.stream();
//        Predicate<String> predicate = tmp -> tmp.equals("111");
//        Comparator<BigDecimal> comparator = Comparator.comparing(BigDecimal::intValue);
//        Function<Integer, String> func = tmp -> tmp + "";
	}

}
